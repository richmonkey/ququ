module.exports = function(grunt) {
    grunt.initConfig({
        nwjs: {
            options: {
                platforms: ['win','osx'],
                buildDir: './dist', 
                version: '0.12.3',
                macIcns: "assets/osx/panda.icns",
                macPlist: {
                    "CFBundleIdentifier":"com.xxx.ququ",
                },
                //winIco: "assets/win/panda.ico",
            },
            src: ['./app/**/*']
        },

        appdmg: {
            options: {
                title: 'ququ',
                icon: 'assets/osx/panda.icns',
                background: 'assets/osx/background.png',
                'icon-size': 128,
                contents: [
                    { "x": 438, "y": 344, "type": "link", "path": "/Applications" },
                    { "x": 192, "y": 344, "type": "file", path: "dist/ququ/osx64/ququ.app" }
                ]
            },
            target: {
                dest: 'dist/ququ/osx64/ququ.dmg'
            }
        }
    });

    grunt.loadNpmTasks('grunt-nw-builder');

    grunt.loadNpmTasks('grunt-appdmg');

}
