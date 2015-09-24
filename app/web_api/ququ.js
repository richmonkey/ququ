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


    launch.isOn(function(err, on) {
        if (on != cfg.autoStart) {
            if (cfg.autoStart) {
                launch.enableLaunch();
            } else {
                launch.disableLaunch();
            }
        }
    });

    var win = gui.Window.get();
    var tray = null;
    var timer = 0;
    gui.App.clearCache();
    window._nwrequire = require;

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

            tray.tooltip = '点此打开';
            var menu = new gui.Menu();

            menu.append(new gui.MenuItem({
                label: "查看消息", 
                click: function () {
                    gui.Window.get().focus();
                    Qu.tray.clearNew();
                    cb('加载消息');
                }
            }));

            var autoStartItem = new gui.MenuItem({
                type: "checkbox",
                checked:cfg.autoStart,
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
                checked:cfg.silent,
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
    //    ///////////////tray/////////////////
    //    var gui = require('nw.gui');
    //    var CustomTrayMenu = require('./custom_tray_menu');
    //
    //    // Extend application menu for Mac OS
    //    if (process.platform == "darwin") {
    //        var menu = new gui.Menu({type: "menubar"});
    //        menu.createMacBuiltin && menu.createMacBuiltin(window.document.title);
    //        gui.Window.get().menu = menu;
    //    }
    //
    //    var $ = function (selector) {
    //        return document.querySelector(selector);
    //    };
    //
    //    var customTray;
    //
    //    document.addEventListener('DOMContentLoaded', function () {
    //        $('#add-tray').addEventListener('click', function () {
    //            if (!customTray) {
    //                customTray = new CustomTrayMenu('custom-tray-menu.html', 'tray.png', {
    //                    width: 185,
    //                    height: 143
    //                });
    //            }
    //        });
    //
    //        $('#remove-tray').addEventListener('click', function () {
    //            if (customTray) {
    //                customTray.remove();
    //                customTray = undefined;
    //            }
    //        });
    //
    //        // bring window to front when open via terminal
    //        gui.Window.get().focus();
    //
    //        // for nw-notify frameless windows
    //        gui.Window.get().on('close', function () {
    //            gui.App.quit();
    //        });
    //    });
    //    //////////////tray////////////////

}());
