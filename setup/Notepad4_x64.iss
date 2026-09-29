; Notepad4 32 位安装脚本
; Inno Setup 5.5.0(a) 兼容
; 编译前请确认 bin\Release\Win32 下的文件已就绪

#define MyAppName "Notepad4"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Notepad4 Contributors"
#define MyAppURL "https://github.com/xuqb1/notepad4"
#define MyAppExeName "Notepad4.exe"
#define MySourceDir "E:\project\notepad41\build\bin\Release\x64"

[Setup]
AppId={{B69A8C7E-A22D-45DA-9997-2D1403C7AEE8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=E:\project\notepad41\build\installer\output
OutputBaseFilename=Notepad4_{#MyAppVersion}_x64_Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=admin
ChangesAssociations=yes
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
UninstallDisplayIcon={app}\{#MyAppExeName}
WizardStyle=modern
DisableProgramGroupPage=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[CustomMessages]
english.CreateDesktopIcon=Create a desktop shortcut
english.CreateQuickLaunchIcon=Create a Quick Launch shortcut
english.ShellIntegration=Shell Integration
english.ContextMenu=Add "Open with Notepad4" to the right-click menu of any file
english.AssocGroup=File Associations
english.AssocText=Text files (.txt)
english.AssocIni=Configuration files (.ini .inf .cfg .conf .properties .props)
english.AssocLog=Log files (.log .nfo .diz)
english.AssocData=Data files (.csv .tsv .json .json5 .xml .yaml .yml .toml)
english.AssocDoc=Markdown and docs (.md .markdown .rst .tex .texinfo)
english.AssocSrc=Source code (.c .h .cpp .hpp .cs .java .py .js .ts .html .css ...)
english.AssocScript=Scripts (.sh .bat .cmd .ps1 .vbs .lua .pl .rb ...)
english.AssocBuild=Build files (.cmake .mk .makefile .ninja .gn .gradle)
english.AssocOther=Other languages (.go .rs .swift .kt .d .f .f90 .pas ...)
english.AssocTextDesc=Text file
english.AssocIniDesc=Configuration file
english.AssocLogDesc=Log file
english.AssocDataDesc=Data file
english.AssocDocDesc=Markdown document
english.AssocSrcDesc=Source code file
english.AssocScriptDesc=Script file
english.AssocBuildDesc=Build file
english.AssocOtherDesc=Source code file
english.ContextMenuDesc=Open with Notepad4
english.ContextMenuBrowse=Browse with Notepad4

chinesesimplified.CreateDesktopIcon=创建桌面快捷方式
chinesesimplified.CreateQuickLaunchIcon=创建快速启动栏图标
chinesesimplified.ShellIntegration=外壳集成
chinesesimplified.ContextMenu=在任意文件的右键菜单里增加"用 Notepad4 打开"
chinesesimplified.AssocGroup=文件关联
chinesesimplified.AssocText=纯文本 (.txt)
chinesesimplified.AssocIni=配置文件 (.ini .inf .cfg .conf .properties .props)
chinesesimplified.AssocLog=日志文件 (.log .nfo .diz)
chinesesimplified.AssocData=数据文件 (.csv .tsv .json .json5 .xml .yaml .yml .toml)
chinesesimplified.AssocDoc=Markdown 及文档 (.md .markdown .rst .tex .texinfo)
chinesesimplified.AssocSrc=源代码 (.c .h .cpp .hpp .cs .java .py .js .ts .html .css 等)
chinesesimplified.AssocScript=脚本 (.sh .bat .cmd .ps1 .vbs .lua .pl .rb 等)
chinesesimplified.AssocBuild=构建文件 (.cmake .mk .makefile .ninja .gn .gradle)
chinesesimplified.AssocOther=其他语言 (.go .rs .swift .kt .d .f .f90 .pas 等)
chinesesimplified.AssocTextDesc=文本文件
chinesesimplified.AssocIniDesc=配置文件
chinesesimplified.AssocLogDesc=日志文件
chinesesimplified.AssocDataDesc=数据文件
chinesesimplified.AssocDocDesc=Markdown 文档
chinesesimplified.AssocSrcDesc=源代码文件
chinesesimplified.AssocScriptDesc=脚本文件
chinesesimplified.AssocBuildDesc=构建文件
chinesesimplified.AssocOtherDesc=源代码文件
chinesesimplified.ContextMenuDesc=用 Notepad4 打开
chinesesimplified.ContextMenuBrowse=用 Notepad4 浏览

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1
Name: "contextmenu"; Description: "{cm:ContextMenu}"; GroupDescription: "{cm:ShellIntegration}"; Flags: checkedonce
Name: "assoc_txt";  Description: "{cm:AssocText}";   GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_ini";  Description: "{cm:AssocIni}";    GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_log";  Description: "{cm:AssocLog}";    GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_data"; Description: "{cm:AssocData}";   GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_doc";  Description: "{cm:AssocDoc}";    GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_src";  Description: "{cm:AssocSrc}";    GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_script"; Description: "{cm:AssocScript}"; GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_build"; Description: "{cm:AssocBuild}"; GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce
Name: "assoc_other"; Description: "{cm:AssocOther}"; GroupDescription: "{cm:AssocGroup}"; Flags: checkedonce

[Files]
; 主程序
Source: "{#MySourceDir}\Notepad4.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MySourceDir}\matepath.exe"; DestDir: "{app}"; Flags: ignoreversion
; 配置文件：仅当不存在时复制，避免覆盖用户设置
Source: "{#MySourceDir}\Notepad4.ini"; DestDir: "{app}"; Flags: onlyifdoesntexist
Source: "{#MySourceDir}\Notepad4 DarkTheme.ini"; DestDir: "{app}"; Flags: onlyifdoesntexist
; locale 文件夹：整体复制
Source: "{#MySourceDir}\locale\*"; DestDir: "{app}\locale"; Flags: ignoreversion recursesubdirs createallsubdirs
; 附加文档（如果存在）
Source: "{#MySourceDir}\License.txt"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist
Source: "{#MySourceDir}\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}\AutoSave"

[Registry]
; ============================================================
; 1) 右键菜单：任意文件 -> 用 Notepad4 打开
; ============================================================
Root: HKLM; Subkey: "Software\Classes\*\shell\OpenWithNotepad4"; ValueType: string; ValueName: ""; ValueData: "{cm:ContextMenuDesc}(&N)"; Tasks: contextmenu; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\*\shell\OpenWithNotepad4"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Notepad4.exe,0"; Tasks: contextmenu
Root: HKLM; Subkey: "Software\Classes\*\shell\OpenWithNotepad4\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""; Tasks: contextmenu

; 文件夹右键 -> 用 matepath 浏览
Root: HKLM; Subkey: "Software\Classes\Directory\shell\OpenWithNotepad4"; ValueType: string; ValueName: ""; ValueData: "{cm:ContextMenuBrowse}(&N)"; Tasks: contextmenu; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Directory\shell\OpenWithNotepad4"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\matepath.exe,0"; Tasks: contextmenu
Root: HKLM; Subkey: "Software\Classes\Directory\shell\OpenWithNotepad4\command"; ValueType: string; ValueName: ""; ValueData: """{app}\matepath.exe"" ""%1"""; Tasks: contextmenu

; 文件夹空白处右键
Root: HKLM; Subkey: "Software\Classes\Directory\Background\shell\OpenWithNotepad4"; ValueType: string; ValueName: ""; ValueData: "{cm:ContextMenuBrowse}(&N)"; Tasks: contextmenu; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Directory\Background\shell\OpenWithNotepad4"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\matepath.exe,0"; Tasks: contextmenu
Root: HKLM; Subkey: "Software\Classes\Directory\Background\shell\OpenWithNotepad4\command"; ValueType: string; ValueName: ""; ValueData: """{app}\matepath.exe"" ""%V"""; Tasks: contextmenu

; 盘符右键
Root: HKLM; Subkey: "Software\Classes\Drive\shell\OpenWithNotepad4"; ValueType: string; ValueName: ""; ValueData: "{cm:ContextMenuBrowse}(&N)"; Tasks: contextmenu; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Drive\shell\OpenWithNotepad4"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\matepath.exe,0"; Tasks: contextmenu
Root: HKLM; Subkey: "Software\Classes\Drive\shell\OpenWithNotepad4\command"; ValueType: string; ValueName: ""; ValueData: """{app}\matepath.exe"" ""%1"""; Tasks: contextmenu

; ============================================================
; 2) 文件关联：ProgID
; ============================================================
Root: HKLM; Subkey: "Software\Classes\Notepad4.TextFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocTextDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.TextFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.TextFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.ConfigFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocIniDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.ConfigFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.ConfigFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.LogFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocLogDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.LogFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.LogFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.DataFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocDataDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.DataFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.DataFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.DocFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocDocDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.DocFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.DocFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.SourceFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocSrcDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.SourceFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.SourceFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.ScriptFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocScriptDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.ScriptFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.ScriptFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.BuildFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocBuildDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.BuildFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.BuildFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

Root: HKLM; Subkey: "Software\Classes\Notepad4.OtherFile"; ValueType: string; ValueName: ""; ValueData: "{cm:AssocOtherDesc}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Notepad4.OtherFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Notepad4.exe,0"
Root: HKLM; Subkey: "Software\Classes\Notepad4.OtherFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Notepad4.exe"" ""%1"""

; ============================================================
; 3) 文件关联：扩展名 -> ProgID
; ============================================================
; 纯文本
Root: HKLM; Subkey: "Software\Classes\.txt"; ValueType: string; ValueName: ""; ValueData: "Notepad4.TextFile"; Tasks: assoc_txt; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.txt\OpenWithProgids"; ValueType: string; ValueName: "Notepad4.TextFile"; ValueData: ""; Tasks: assoc_txt; Flags: uninsdeletevalue

; 配置
Root: HKLM; Subkey: "Software\Classes\.ini"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ConfigFile"; Tasks: assoc_ini; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ini\OpenWithProgids"; ValueType: string; ValueName: "Notepad4.ConfigFile"; ValueData: ""; Tasks: assoc_ini; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.inf"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ConfigFile"; Tasks: assoc_ini; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.cfg"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ConfigFile"; Tasks: assoc_ini; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.conf"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ConfigFile"; Tasks: assoc_ini; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.properties"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ConfigFile"; Tasks: assoc_ini; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.props"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ConfigFile"; Tasks: assoc_ini; Flags: uninsdeletevalue

; 日志
Root: HKLM; Subkey: "Software\Classes\.log"; ValueType: string; ValueName: ""; ValueData: "Notepad4.LogFile"; Tasks: assoc_log; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.nfo"; ValueType: string; ValueName: ""; ValueData: "Notepad4.LogFile"; Tasks: assoc_log; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.diz"; ValueType: string; ValueName: ""; ValueData: "Notepad4.LogFile"; Tasks: assoc_log; Flags: uninsdeletevalue

; 数据
Root: HKLM; Subkey: "Software\Classes\.csv"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.tsv"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.json"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.json5"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.xml"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.yaml"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.yml"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.toml"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DataFile"; Tasks: assoc_data; Flags: uninsdeletevalue

; 文档
Root: HKLM; Subkey: "Software\Classes\.md"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DocFile"; Tasks: assoc_doc; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.markdown"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DocFile"; Tasks: assoc_doc; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.rst"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DocFile"; Tasks: assoc_doc; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.tex"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DocFile"; Tasks: assoc_doc; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.texinfo"; ValueType: string; ValueName: ""; ValueData: "Notepad4.DocFile"; Tasks: assoc_doc; Flags: uninsdeletevalue

; 源代码
Root: HKLM; Subkey: "Software\Classes\.c"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.h"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.cc"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.cpp"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.cxx"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.hpp"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.hxx"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.cs"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.java"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.py"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.pyw"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.js"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.mjs"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.jsx"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ts"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.tsx"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.html"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.htm"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.xhtml"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.css"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.scss"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.less"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.php"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.asp"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.aspx"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.jsp"; ValueType: string; ValueName: ""; ValueData: "Notepad4.SourceFile"; Tasks: assoc_src; Flags: uninsdeletevalue

; 脚本
Root: HKLM; Subkey: "Software\Classes\.sh"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.bash"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.zsh"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.bat"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.cmd"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ps1"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.psm1"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.vbs"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.lua"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.pl"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.pm"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.rb"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.tcl"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ahk"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.au3"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.nsi"; ValueType: string; ValueName: ""; ValueData: "Notepad4.ScriptFile"; Tasks: assoc_script; Flags: uninsdeletevalue

; 构建
Root: HKLM; Subkey: "Software\Classes\.cmake"; ValueType: string; ValueName: ""; ValueData: "Notepad4.BuildFile"; Tasks: assoc_build; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.mk"; ValueType: string; ValueName: ""; ValueData: "Notepad4.BuildFile"; Tasks: assoc_build; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.makefile"; ValueType: string; ValueName: ""; ValueData: "Notepad4.BuildFile"; Tasks: assoc_build; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ninja"; ValueType: string; ValueName: ""; ValueData: "Notepad4.BuildFile"; Tasks: assoc_build; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.gn"; ValueType: string; ValueName: ""; ValueData: "Notepad4.BuildFile"; Tasks: assoc_build; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.gradle"; ValueType: string; ValueName: ""; ValueData: "Notepad4.BuildFile"; Tasks: assoc_build; Flags: uninsdeletevalue

; 其他语言
Root: HKLM; Subkey: "Software\Classes\.go"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.rs"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.swift"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.kt"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.kts"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.d"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.dart"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.scala"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.groovy"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.f"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.f90"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.f95"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.pas"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.pp"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.sql"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.vhdl"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.v"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.vhd"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.sv"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.svh"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.asm"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.s"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ml"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.fs"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.hs"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.erl"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.ex"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.clj"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.nim"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.zig"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.r"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.jl"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.m"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.mm"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.vb"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.vba"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\.bas"; ValueType: string; ValueName: ""; ValueData: "Notepad4.OtherFile"; Tasks: assoc_other; Flags: uninsdeletevalue

[Code]
// 安装完成后通知资源管理器刷新关联和右键菜单
procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
  if CurStep = ssPostInstall then
  begin
    // 刷新图标和右键菜单缓存
    Exec('ie4uinit.exe', '-ClearIconCache', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
    // 通知 shell 有文件关联变化
    Exec('cmd.exe', '/c assoc >nul 2>nul', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  end;
end;