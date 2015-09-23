#安装依赖
1. 安装nodejs  http://nodejs.org
2. npm install
3. npm install grunt-cli -g

#生成可执行程序
grunt nwjs

#mac下生成dmg安装包
grunt appdmg

#win安装包
1. 下载并安装Inno 5.5.6 unicode 版本
   下载地址:http://jrsoftware.org/isdl.php

2. 使用Inno Setup Compile编译setup.iss,生成dist\ququ_setup.exe安装包
