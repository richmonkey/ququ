/**
 * Created by zhanghedong on 15/9/23.
 */
(function () {
    "use strict";


    window.Qu = window.Qu || {};
    //var ua = navigator.userAgent.toLowerCase();
    //var _isNodeWebkit = window.navigator.userAgent.indexOf('nw') !== -1;

    var gui = require('nw.gui');
    var launch = require("../web_api/launch.js");

    var config = require("../web_api/config.js");

    var dataPath = gui.App.dataPath;

    var cfg = config.loadConfig(dataPath);

    console.log("data path:" + dataPath);

    launch.isOn(function (err, on) {
        if (on != cfg.autoStart) {
            if (cfg.autoStart) {
                launch.enableLaunch();
            } else {
                launch.disableLaunch();
            }
        }
    });

    //var win = gui.Window.get();
    var win = global.currentWin;
    var tray = null;
    var timer = 0;
    gui.App.clearCache();
    window._nwrequire = require;

    win.on('close', function () {
        this.hide();
    });

    function showNotification(title, body) {
        // Let's check if the browser supports notifications
        if (!("Notification" in window)) {
            console.log("This browser does not support desktop notification");
        }

        Notification.requestPermission(function (permission) {
            // If the user accepts, let's create a notification
            if (permission === "granted") {
                var options = {
                    //icon:"",
                    body: body,
                };
                var notification = new Notification(title, options);
                notification.onclick = function () {
                    console.log("notification on click");
                    Qu.tray.clearNew();
                    win.show();
                    win.focus();
                };
                notification.onshow = function () {
                    console.log("notification on show");
                }
            }
        });
    }

    function playSound() {
        var myAud = document.getElementById("player");
        console.log("player:" + myAud);
        myAud.play();
    }

    var hubConnection = $.hubConnection("http://117.27.143.80");
    //hubConnection.qs = { };//需要传递QueryString参数
    var hubProxy = hubConnection.createHubProxy("HubTest");
    hubConnection.stateChanged(function (state) {
        console.log("状态：[" + state.newState + "," + state.oldState);
    });

    hubConnection.disconnected(function (conn) {
        cnosole.log("已断开连接", "red", 2);
        Connect();
    });
    hubConnection.error(function (connection, errorData, sendData) {
        console.log("发生错误：errorData[" + errorData + "] sendData[" + sendData + "]");
    });
    hubConnection.reconnecting(function (connection) {
        console.log("正在重新连接...");
    });
    hubConnection.reconnected(function (connection) {
        console.log("已重新连接，开始接收消息...");
    });
    hubConnection.starting(function (connection) {
        console.log("正在连接...");
    });
    //接收消息
    hubProxy.on("Receive", function (message) {
        console.log(message);
        showNotification("ququ", message);
        if (!cfg.silent) {
            playSound();
        }
        Qu.tray.hasNew();
    });

    var Connect = function () {
        hubConnection.start({transport: ["webSockets", "serverSentEvents", "longPolling", "foreverFrame"]}).done(function () {
            console.log("连接成功，开始接收消息...");
        }).fail(function (error) {
            console.log("连接出错：" + error);
        });
    };
    Connect();

    //发送测试消息
    Qu.send = function () {
        hubProxy.invoke("Send");
    };


    Qu.close = function () {
        win.close()
    };
    Qu.hide = function () {
        win.hide()
    };
    Qu.quit = function () {
        gui.App.quit();
    };
    Qu.tray = {
        init: function (cb) {
            tray = tray || new gui.Tray({
                    title: '',
                    icon: './res/tray.png',
                    iconsAreTemplates: false
                });

            tray.on("click", function () {
                win.show();
                win.focus();
            });

            tray.tooltip = '点此打开';
            var menu = new gui.Menu();

            menu.append(new gui.MenuItem({
                label: "查看消息",
                click: function () {
                    win.show();
                    win.focus();
                    Qu.send();
                    Qu.tray.clearNew();
                    cb('加载消息');
                }
            }));

            var autoStartItem = new gui.MenuItem({
                type: "checkbox",
                checked: cfg.autoStart,
                label: "开机启动",
                click: function () {
                    console.log("auto start:" + autoStartItem.checked);
                    cfg.autoStart = autoStartItem.checked;
                    config.writeConfig(dataPath, cfg);
                    if (autoStartItem.checked) {
                        launch.enableLaunch();
                    } else {
                        launch.disableLaunch();
                    }
                    cb("开机启动");
                }
            });
            menu.append(autoStartItem);

            var silentItem = new gui.MenuItem({
                type: "checkbox",
                checked: cfg.silent,
                label: "静音",
                click: function () {
                    console.log("silent:" + silentItem.checked);
                    cfg.silent = silentItem.checked;
                    config.writeConfig(dataPath, cfg);
                    cb("静音");
                }
            });
            menu.append(silentItem);

            menu.append(new gui.MenuItem({
                label: "注销",
                click: function () {
                    gui.Window.get().focus();
                    cb("注销");
                }
            }));

            menu.append(new gui.MenuItem({
                label: "退出",
                click: function () {
                    cb("退出");
                    gui.App.quit();
                }
            }));

            tray.menu = menu;
        },

        hasNew: function () {
            if (timer) {
                return false;
            }
            timer = setInterval(function () {
                tray.icon = tray.icon == './res/tray.png' ? './res/tray_new.png' : './res/tray.png';
            }, 300);
        },
        clearNew: function () {
            clearInterval(timer);
            timer = 0;
            tray.icon = './res/tray.png';
        },
        close: function () {
            tray.remove();
            tray = null;
            tray.trayMenu.close();
        }
    };


    //};

}());
