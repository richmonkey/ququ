var gui = require('nw.gui');
var appUrl = gui.App.manifest.appUrl;
var newWin = null,
    currentWin = null,
    isConnected = true,
    reloadTimer = null,
    isLoadWindowOpen = false,
    lastNetState = false;

gui.App.clearCache(); // 清除缓存

function handle(cb) {

    currentWin = gui.Window.get();
    currentWin.on("close", function () {
        //newWin.close(true);
        currentWin.close(true);
    });

    startLoadApp(cb);

    reloadTimer = setInterval(function () {
        startLoadApp(cb);
    }, 20 * 1000);

    global.isLoading = true;
    global.currentWin = currentWin;
}


//让加载页窗口跳转到newWin后台打开的项目首页（可直接复用缓存到浏览器中的项目首页资源）
function loadContentInCurrentWindow(currentWin, appUrl) {
    currentWin.removeAllListeners("close");
    currentWin.window.location.href = appUrl;
}

function checkNetworkConnected(cb) {
    if (navigator.onLine) {
        cb(null, true);
    } else {
        cb(null, false);
    }
}

function reloadAppRes() {
    if (!isLoadWindowOpen) {
        newWin = gui.Window.open(appUrl, {
            "show": false
        });
        currentWin.on("close",function(){
            newWin.close(true);
            currentWin.close(true);
        });
        newWin.once("loaded", function () {
            newWin.close(true);
            loadContentInCurrentWindow(currentWin, appUrl);
        });
        isLoadWindowOpen = true;
    } else {
        newWin.window.location.href = appUrl;
    }

}

function startLoadApp(cb) {
    checkNetworkConnected(function (err, res) {
        if (err) {
            isConnected = false;
            lastNetState = false;
            cb && cb();
        }
        if (res) {
            isConnected = true;
            if (!lastNetState) {
                reloadAppRes();
            }
            lastNetState = true;
            cb && cb();
        } else {
            isConnected = false;
            lastNetState = false;
            cb && cb();
        }
    });
}
/*function initApp(){
 var tray = new gui.Tray({
 icon: './res/tray@2x.png'
 });
 global.tray = tray;
 }*/

//initApp();
//handle();