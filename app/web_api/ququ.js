/**
 * Created by zhanghedong on 15/9/23.
 */
(function () {
    "use strict";
    window.Qu = window.Qu || {};
    //var ua = navigator.userAgent.toLowerCase();
    //var _isNodeWebkit = window.navigator.userAgent.indexOf('nw') !== -1;
    var gui = require('nw.gui');
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
        init: function (option) {
            option = option || {};
            tray = tray || new gui.Tray({
                    title: option.title || '',
                    icon: option.icon || './res/tray.png',
                    iconsAreTemplates: false
                });
            tray.on('click', function () {
                alert('ssl');
            });
            tray.tooltip = option.tooltip || '点此打开';
            var menu = new gui.Menu();
            for (var i = 0, j = option.menu.length; i < j; i++) {
                (function (j) {
                    if (option.menu[j].type) {
                        menu.append(new gui.MenuItem({
                            type: option.menu[j].type,
                            label: option.menu[j].label, click: function () {
                                gui.Window.get().focus();
                                option.menu[j].click()
                            }
                        }));
                    } else {
                        menu.append(new gui.MenuItem({
                            label: option.menu[j].label, click: function () {
                                gui.Window.get().focus();
                                option.menu[j].click()
                            }
                        }));
                    }
                }(i))
            }
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