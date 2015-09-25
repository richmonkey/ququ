var gui = require('nw.gui');
var appUrl = gui.App.manifest.appUrl;
var newWin = null,
    currentWin = null,
    isConnected = true,
    reloadTimer = null,
    isLoadWindowOpen = false,
    lastNetState = false;


gui.App.clearCache(); // 清除缓存

//让加载页窗口跳转到newWin后台打开的项目首页（可直接复用缓存到浏览器中的项目首页资源）
function loadContentInCurrentWindow(currentWin, appUrl) {
    currentWin.window.location.href = appUrl;
}

function reloadAppRes() {
    if (!isLoadWindowOpen) {
        newWin = gui.Window.open(appUrl, {
            "show": false
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

function startLoadApp() {
    console.log("load main page");
    reloadAppRes();
}


isConnected = navigator.onLine;

var currentWin = gui.Window.get();

var checkNetStatus = function() {
    isConnected = navigator.onLine;
    checkConnetionUpdateText();
    if (isConnected) {
        startLoadApp();
    }
};

window.addEventListener('online',  checkNetStatus);
window.addEventListener('offline',  checkNetStatus);

reloadTimer = setInterval(function () {
    if (isConnected) {
        startLoadApp();
    }
}, 20 * 1000);


function reload() {
    clearInterval(reloadTimer);
    //让加载中显示一下
    setTimeout(function () {
        checkNetStatus();
    }, 500);

    reloadTimer = setInterval(function () {
        if (isConnected) {
            startLoadApp();
        }
    }, 10 * 1000);
}

checkNetStatus();
