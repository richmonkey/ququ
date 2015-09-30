var gui = require('nw.gui');
var pkg = require('./package.json'); // Insert your app's manifest here
var updater = require('node-webkit-updater');
var upd = new updater(pkg);
var copyPath, execPath;

if(gui.App.argv.length) {
    copyPath = gui.App.argv[0];
    execPath = gui.App.argv[1];

    // Replace old app
    upd.install(copyPath, function(err) {
        if(!err) {
            gui.App.quit();
        }
    });
} else {
    upd.checkNewVersion(function(error, newVersionExists, manifest) {
        console.log("new version:" + newVersionExists);
        if (!error && newVersionExists) {
            //todo 提醒用户是否下载安装最新版本
            upd.download(function(error, filename) {
                console.log("download err:" + error);
                if (!error) {
                    console.log("downloaded");
                    upd.unpack(filename, function(error, newAppPath) {
                        if (!error) {
                            //todo 提醒用户是否立刻重启应用
                            console.log("unpacked:" + newAppPath);
                            //在应用退出时再运行installer
                            process.mainModule.exports.setupInstaller(upd, newAppPath);
                        }
                    }, manifest);
                }
            }, manifest);
        }
    });
}
