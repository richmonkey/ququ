; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ququ"
#define MyAppVersion "0.1.0"
#define MyAppPublisher "FuZhouWangSuo"
#define MyAppURL "http://www.wangsuo.com/"
#define MyAppExeName "ququ.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{36241436-8045-4F82-8670-F2CEE75F9387}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=D:\ququ\dist
OutputBaseFilename=ququ_setup
SetupIconFile=D:\ququ\assets\win\panda.ico
Compression=lzma
SolidCompression=yes

[Registry]
;current user only
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "ququ"; ValueData: "{app}\ququ.exe"; Flags: uninsdeletekey


;lodop
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1"; ValueType: string; ValueName: "Path"; ValueData: "{pf}\MountTaiSoftware\Lodop\NPCAOSOFT_WEB_PRINT_lodop.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1"; ValueType: string; ValueName: "ProductName"; ValueData: "NPLodop 6.1 Plugin"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1"; ValueType: string; ValueName: "Version"; ValueData: "6, 1, 4, 0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1\MimeTypes"; ValueType: string; ValueName: ""; ValueData: ""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1\MimeTypes\application/x-print-lodop"; ValueType: string; ValueName: "Description"; ValueData: "NPLodop"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}"; ValueType: string; ValueName: ""; ValueData: "LodopX Control"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Control"; ValueType: string; ValueName: ""; ValueData: ""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\MOUNTT~1\Lodop\CAOSOF~1.OCX"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\InprocServer32"; ValueType: string; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\MiscStatus"; ValueType: string; ValueName: ""; ValueData: "0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\MiscStatus\1"; ValueType: string; ValueName: ""; ValueData: "205201"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\ProgID"; ValueType: string; ValueName: ""; ValueData: "Lodop.LodopX"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\ToolboxBitmap32"; ValueType: string; ValueName: ""; ValueData: "{pf}\MountTaiSoftware\Lodop\CAOSOFT_WEB_PRINT_lodop.ocx,0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Verb"; ValueType: string; ValueName: ""; ValueData: ""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Verb\0"; ValueType: string; ValueName: ""; ValueData: "Properties,0,2"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Version"; ValueType: string; ValueName: ""; ValueData: "6.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}"; ValueType: string; ValueName: ""; ValueData: "ILodopXEvents"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020420-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "6.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}"; ValueType: string; ValueName: ""; ValueData: "ILodopX"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "6.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Lodop.LodopX"; ValueType: string; ValueName: ""; ValueData: "LodopX Control"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Lodop.LodopX\Clsid"; ValueType: string; ValueName: ""; ValueData: "{{2105C259-1E0C-4534-8141-A753534CB4CA}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0"; ValueType: string; ValueName: ""; ValueData: "Lodop"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\0\win32"; ValueType: string; ValueName: ""; ValueData: "{pf}\MountTaiSoftware\Lodop\CAOSOFT_WEB_PRINT_lodop.ocx"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\FLAGS"; ValueType: string; ValueName: ""; ValueData: "2"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\HELPDIR"; ValueType: string; ValueName: ""; ValueData: "{pf}\MountTaiSoftware\Lodop\"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}"; ValueType: string; ValueName: ""; ValueData: "LodopX Control"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Control"; ValueType: string; ValueName: ""; ValueData: ""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\MOUNTT~1\Lodop\CAOSOF~1.OCX"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\InprocServer32"; ValueType: string; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\MiscStatus"; ValueType: string; ValueName: ""; ValueData: "0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\MiscStatus\1"; ValueType: string; ValueName: ""; ValueData: "205201"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\ProgID"; ValueType: string; ValueName: ""; ValueData: "Lodop.LodopX"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\ToolboxBitmap32"; ValueType: string; ValueName: ""; ValueData: "{pf}\MountTaiSoftware\Lodop\CAOSOFT_WEB_PRINT_lodop.ocx,0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Verb"; ValueType: string; ValueName: ""; ValueData: ""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Verb\0"; ValueType: string; ValueName: ""; ValueData: "Properties,0,2"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{2105C259-1E0C-4534-8141-A753534CB4CA}\Version"; ValueType: string; ValueName: ""; ValueData: "6.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}"; ValueType: string; ValueName: ""; ValueData: "ILodopXEvents"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020420-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{0DC96C68-587A-486E-93D8-7BA1EAF5B9CB}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "6.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}"; ValueType: string; ValueName: ""; ValueData: "ILodopX"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{409D8542-9C63-4719-8DF6-ABDA44494A4E}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "6.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0"; ValueType: string; ValueName: ""; ValueData: "Lodop"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\0\win32"; ValueType: string; ValueName: ""; ValueData: "{pf}\MountTaiSoftware\Lodop\CAOSOFT_WEB_PRINT_lodop.ocx"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\FLAGS"; ValueType: string; ValueName: ""; ValueData: "2"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{0F9014E9-F31C-408E-9CBA-C484B39066ED}\6.0\HELPDIR"; ValueType: string; ValueName: ""; ValueData: "{pf}\MountTaiSoftware\Lodop\"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1"; ValueType: string; ValueName: "Path"; ValueData: "{pf}\MountTaiSoftware\Lodop\NPCAOSOFT_WEB_PRINT_lodop.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1"; ValueType: string; ValueName: "ProductName"; ValueData: "NPLodop 6.1 Plugin"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1"; ValueType: string; ValueName: "Version"; ValueData: "6, 1, 4, 0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1\MimeTypes"; ValueType: string; ValueName: ""; ValueData: ""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@MountTaiSoftware.com/web_print_lodop,version=6.1\MimeTypes\application/x-print-lodop"; ValueType: string; ValueName: "Description"; ValueData: "NPLodop"; Flags: uninsdeletekey


;jatools
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "Inno Setup"; ValueData: "Language='default'"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "InstallLocation"; ValueData: "{pf}\jatools\"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "DisplayName"; ValueData: "jatoolsPrinter version 9,1,6716,0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "UninstallString"; ValueData: "{pf}\jatools\unins000.exe\"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "QuietUninstallString"; ValueData: "'{pf}\jatools\unins000.exe\' /SILENT"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "DisplayVersion"; ValueData: "9,1,6716,0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "Publisher"; ValueData: "jatool"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "URLInfoAbout"; ValueData: "http://print.jatools.com/"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "HelpLink"; ValueData: "http://print.jatools.com/"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "URLUpdateInfo"; ValueData: "http://print.jatools.com/"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "NoModify"; ValueData: "dword:00000001"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "NoRepair"; ValueData: "dword:00000001"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "InstallDate"; ValueData: "20150824"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\{{379EA095-E49F-46B9-BF08-2A93048C73FE}_is1"; ValueType: string; ValueName: "EstimatedSize"; ValueData: "dword:0000206c"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\BrochureMachine.PrintJob"; ValueType: string; ValueName: ""; ValueData: "PrintJob Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\BrochureMachine.PrintJob\CLSID"; ValueType: string; ValueName: ""; ValueData: "{{D515C262-C25C-46FA-9A54-9342DDEE78A3}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\BrochureMachine.PrintJob\CurVer"; ValueType: string; ValueName: ""; ValueData: "BrochureMachine.PrintJob.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\BrochureMachine.PrintJob.1"; ValueType: string; ValueName: ""; ValueData: "PrintJob Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\BrochureMachine.PrintJob.1\CLSID"; ValueType: string; ValueName: ""; ValueData: "{{D515C262-C25C-46FA-9A54-9342DDEE78A3}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}"; ValueType: string; ValueName: ""; ValueData: "JatoolsPrinter Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\InprocServer32"; ValueType: string; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\ProgID"; ValueType: string; ValueName: ""; ValueData: "Jatools.Printer.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\Programmable"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-0571-88254257}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\VersionIndependentProgID"; ValueType: string; ValueName: ""; ValueData: "Jatools.Printer"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}"; ValueType: string; ValueName: ""; ValueData: "PrintJob Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\ProgID"; ValueType: string; ValueName: ""; ValueData: "BrochureMachine.PrintJob.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\Programmable"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\VersionIndependentProgID"; ValueType: string; ValueName: ""; ValueData: "BrochureMachine.PrintJob"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}"; ValueType: string; ValueName: ""; ValueData: "jatoolsCoder Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\Control"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\InprocServer32"; ValueType: string; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\MiscStatus"; ValueType: string; ValueName: ""; ValueData: "0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\MiscStatus\1"; ValueType: string; ValueName: ""; ValueData: "131473"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\ProgID"; ValueType: string; ValueName: ""; ValueData: "jatools.Coder.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\Programmable"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\ToolboxBitmap32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll, 101"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{AB0E4750-6A8A-4C38-8293-988C6021A3A0}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\Version"; ValueType: string; ValueName: ""; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\VersionIndependentProgID"; ValueType: string; ValueName: ""; ValueData: "jatools.Coder"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}"; ValueType: string; ValueName: ""; ValueData: "IJatoolsPrinter"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}"; ValueType: string; ValueName: ""; ValueData: "IJatoolsCoder"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}"; ValueType: string; ValueName: ""; ValueData: "IPrintJob"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}"; ValueType: string; ValueName: ""; ValueData: "IPrinterEvent"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\jatools.Coder"; ValueType: string; ValueName: ""; ValueData: "jatoolsCoder Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\jatools.Coder\CLSID"; ValueType: string; ValueName: ""; ValueData: "{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\jatools.Coder\CurVer"; ValueType: string; ValueName: ""; ValueData: "jatools.Coder.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\jatools.Coder.1"; ValueType: string; ValueName: ""; ValueData: "jatoolsCoder Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\jatools.Coder.1\CLSID"; ValueType: string; ValueName: ""; ValueData: "{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Jatools.Printer"; ValueType: string; ValueName: ""; ValueData: "JatoolsPrinter Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Jatools.Printer\CLSID"; ValueType: string; ValueName: ""; ValueData: "{{B43D3361-D075-4BE2-87FE-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Jatools.Printer\CurVer"; ValueType: string; ValueName: ""; ValueData: "Jatools.Printer.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Jatools.Printer.1"; ValueType: string; ValueName: ""; ValueData: "JatoolsPrinter Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Jatools.Printer.1\CLSID"; ValueType: string; ValueName: ""; ValueData: "{{B43D3361-D075-4BE2-87FE-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0"; ValueType: string; ValueName: ""; ValueData: "JatoolsPrinter 1.0 Type Library"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0\0\win32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0\FLAGS"; ValueType: string; ValueName: ""; ValueData: "0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0\HELPDIR"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}"; ValueType: string; ValueName: ""; ValueData: "JatoolsPrinter Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\InprocServer32"; ValueType: string; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\ProgID"; ValueType: string; ValueName: ""; ValueData: "Jatools.Printer.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\Programmable"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-0571-88254257}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{B43D3361-D075-4BE2-87FE-057188254255}\VersionIndependentProgID"; ValueType: string; ValueName: ""; ValueData: "Jatools.Printer"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}"; ValueType: string; ValueName: ""; ValueData: "PrintJob Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\ProgID"; ValueType: string; ValueName: ""; ValueData: "BrochureMachine.PrintJob.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\Programmable"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{D515C262-C25C-46FA-9A54-9342DDEE78A3}\VersionIndependentProgID"; ValueType: string; ValueName: ""; ValueData: "BrochureMachine.PrintJob"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}"; ValueType: string; ValueName: ""; ValueData: "jatoolsCoder Class"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\Control"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\InprocServer32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\InprocServer32"; ValueType: string; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\MiscStatus"; ValueType: string; ValueName: ""; ValueData: "0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\MiscStatus\1"; ValueType: string; ValueName: ""; ValueData: "131473"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\ProgID"; ValueType: string; ValueName: ""; ValueData: "jatools.Coder.1"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\Programmable"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\ToolboxBitmap32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll, 101"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{AB0E4750-6A8A-4C38-8293-988C6021A3A0}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\Version"; ValueType: string; ValueName: ""; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\CLSID\{{E5A01FF5-FC6E-42F3-AF48-DEA5777DED62}\VersionIndependentProgID"; ValueType: string; ValueName: ""; ValueData: "jatools.Coder"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}"; ValueType: string; ValueName: ""; ValueData: "IJatoolsPrinter"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{A79007AB-EB8B-46DB-9225-0571882542BB}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}"; ValueType: string; ValueName: ""; ValueData: "IJatoolsCoder"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{B77E580C-CC73-41B6-B024-2617C8F33405}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}"; ValueType: string; ValueName: ""; ValueData: "IPrintJob"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{C38AC297-7087-42A4-9441-86A55A3C2B9D}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}"; ValueType: string; ValueName: ""; ValueData: "IPrinterEvent"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}\ProxyStubClsid32"; ValueType: string; ValueName: ""; ValueData: "{{00020424-0000-0000-C000-000000000046}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}\TypeLib"; ValueType: string; ValueName: ""; ValueData: "{{083432E4-D075-43A8-96A5-057188254255}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\Interface\{{CCE84212-DB31-11CF-9999-00A0C90391D3}\TypeLib"; ValueType: string; ValueName: "Version"; ValueData: "1.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0"; ValueType: string; ValueName: ""; ValueData: "JatoolsPrinter 1.0 Type Library"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0\0\win32"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools\jatoolsPrinter.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0\FLAGS"; ValueType: string; ValueName: ""; ValueData: "0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Wow6432Node\TypeLib\{{083432E4-D075-43A8-96A5-057188254255}\1.0\HELPDIR"; ValueType: string; ValueName: ""; ValueData: "{pf}\jatools"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0"; ValueType: string; ValueName: "Path"; ValueData: "{pf}\jatools\npjc.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0"; ValueType: string; ValueName: "ProductName"; ValueData: "jatoolsCoder Plugin"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0"; ValueType: string; ValueName: "Version"; ValueData: "1.1.0.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0"; ValueType: string; ValueName: "Description"; ValueData: "jatoolsCoder Plugin"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0"; ValueType: string; ValueName: "Vendor"; ValueData: "JATOOLS"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0\MimeTypes"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsCoder Plugin;version=1.1.0.0\MimeTypes\application/x-vnd.jatoolsCoder"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0"; ValueType: string; ValueName: "ProductName"; ValueData: "jatoolsPrinter Plugin"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0"; ValueType: string; ValueName: "Description"; ValueData: "jatoolsPrinter Plugin"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0"; ValueType: string; ValueName: "Path"; ValueData: "{pf}\jatools\npjp.dll"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0"; ValueType: string; ValueName: "Vendor"; ValueData: "JATOOLS"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0"; ValueType: string; ValueName: "Version"; ValueData: "6.1.0.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0\MimeTypes"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\MozillaPlugins\@jatools.com/jatoolsPrinter Plugin;version=6.1.0.0\MimeTypes\application/x-vnd.jatoolsPrinter"; Flags: uninsdeletekey

[Languages]
Name: "Chinese"; MessagesFile: "ChineseSimp.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags:

[Files]
Source: "dist\ququ\win32\ququ.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\ququ\win32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "lodop\*"; DestDir: "{pf}\MountTaiSoftware\Lodop"; Flags: ignoreversion
Source: "jatools\*"; DestDir: "{pf}\jatools"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
