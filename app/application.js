//need require('application.js'), do not <script>application.js</script>
//node context

var net = require('net');
var fs = require('fs');

//启动单个实例
var server = null;

exports.mainWindow = null;

exports.backgroundWindow = null;
//首次启动 null:未知  true:首次启动  false:非首次启动
exports.firstStart = null;

exports.close = function () {
    server.close(function() {
      process.exit(0);
    });
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
                  var p = "d:\\test.txt";
                  fs.writeFileSync(p, "unlink error:" + e.code);
                  throw e;
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
            exports.firstStart = true;
        });

        server.on("error", function() {
            console.log("listen error");
            process.exit(0);
        });

        server.listen(socket);
    });

}

main();
