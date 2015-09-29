//need require('application.js'), do not <script>application.js</script>
//node context

var net = require('net');
var fs = require('fs');


var upd = null, newAppPath = null;
//启动单个实例
var server = null;

exports.mainWindow = null;

exports.backgroundWindow = null;

//首次启动 null:未知  true:首次启动  false:非首次启动
exports.firstStart = null;

exports.dataPath = null;

exports.setupInstaller = function(upd1, newAppPath1) {
    console.log("setup installer");
    upd = upd1;
    newAppPath = newAppPath1;
}

exports.runInstaller = function() {
    if (upd) {
        console.log("run installer");
        upd.runInstaller(newAppPath, [upd.getAppPath(), upd.getAppExec()],{});
    }
}

function getLogFilePath() {
  return exports.dataPath + "\\ququ_log.txt";
}

function main() {
    var appName = "ququ";
    if (process.platform === 'darwin') {
        exports.firstStart = true;
        return;
    }

    var socket = (process.platform === 'win32') ?
        '\\\\.\\pipe\\' + appName + '-sock' :
        pipe.join(os.tmpdir(), appName + '.sock');

    var client = net.connect( {path: socket}, function() {
        client.write("reboot", function() {
            client.end();
            process.exit(0);
        });
    }).on('error', function(err) {
        if (process.platform === 'win32') {
            try {
                fs.unlinkSync(socket);
            } catch (e) {
                if (e.code !== 'ENOENT') {
                  var p = getLogFilePath();
                  fs.appendFileSync(p, "unlink error:" + e.code);
                  process.exit(0);
                }
            }
        }

        server = net.createServer(function(connection) {
            connection.on('data', function(data) {
                console.log("reboot");
                if (exports.mainWindow) {
                    exports.mainWindow.show();
                    exports.mainWindow.focus();
                }
            });
        });

        server.on("listening", function() {
            console.log("booted");
            var p = getLogFilePath();
            fs.appendFileSync(p, "booted\n");
            exports.firstStart = true;
        });

        server.on("error", function(e) {
            console.log("listen error:" + e.code);
            var p = getLogFilePath();
            fs.appendFileSync(p, "listen error:" + e.code + "\n");
            process.exit(0);
        });
        var p = getLogFilePath();
        fs.writeFileSync(p, "listen...\n");
        server.listen(socket);
    });
}

exports.main = main;
