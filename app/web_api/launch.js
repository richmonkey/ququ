
if (process.platform == 'darwin') {
    console.log("darwin");
    var fs = require('fs');
    var path = require('path');
    var home = process.env['HOME'];
    var dir = home + "/Library/LaunchAgents";
    if (!fs.existsSync(dir)) {
        console.log("mkdir:" + dir);
        fs.mkdirSync(dir);
    }

    var plist = home + "/Library/LaunchAgents/com.wangsuo.ququ.plist";


    var content = '<?xml version="1.0" encoding="UTF-8"?>\n';
    content += '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">\n';
    content += '<plist version="1.0">\n';
    content += '<dict>\n';
    content += '<key>Label</key>\n';
    content += '<string>com.wangsuo.ququ</string>\n';
    content += '<key>ProgramArguments</key>\n';
    content += '<array>\n';
    content += '<string>/usr/bin/open</string>\n';
    content += '<string>-W</string>\n';
    content += '<string>/Applications/ququ.app</string>\n';
    content += '</array>\n';
    content += '<key>RunAtLoad</key>\n';
    content += '<true/>\n';
    content += '</dict>\n';
    content += '</plist>\n';

    exports.isOn = function(cb) {
        console.log("plist path:" + plist);
        fs.exists(plist, function(exists) {
            console.log("plist exists:" + exists);
            cb(null, exists);
        });
    };

    exports.enableLaunch = function() {
        console.log("enable launch");
        fs.writeFileSync(plist, content, {flag:"w"});
    };

    exports.disableLaunch = function() {
        console.log("disable launch");
        fs.unlinkSync(plist);
    };

} else {
    var Winreg = require('winreg');
    var regKey = new Winreg({
        hive: Winreg.HKCU,                                          // HKEY_CURRENT_USER
        key:  '\\Software\\Microsoft\\Windows\\CurrentVersion\\Run' // key containing autostart programs
    });

    var ququ_key = "ququ";

    //windows
    exports.isOn = function(cb) {
        regKey.get(ququ_key, function(err, result) {
            if (err) {
                console.log("get ququ registry err:" + err);
                cb(err, false);
                return
            }
            var execPath = '"' + process.execPath + '"';
            if (execPath != result) {
                cb(null, false);
                return;
            }
            cb(null, true);
        });
    };

    exports.enableLaunch = function() {
        var execPath = '"' + process.execPath + '"';
        regKey.set(ququ_key, Winreg.REG_SZ, execPath, function(err, result) {
            if (err) {
                console.log("enable launch err:" + err);
                return
            }
            console.log("enable launch result:" + result);
        });
    };

    exports.disableLaunch = function() {
        regKey.remove(ququ_key, function(err, result) {
            if (err) {
                console.log("disable launch err:" + err);
                return
            }
            console.log("disable launch result:" + result);
        });
    };
}
