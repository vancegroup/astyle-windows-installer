; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

; Information on non-privileged install from http://www.kinook.com/blog/?p=53

#define MyAppName "AStyle with Right-Click"
#define MyAppVersion "2.02"
#define MyAppPublisher "AStyle and Ryan Pavlik"
#define MyAppURL "http://github.com/rpavlik/astyle-right-click-installer"
#define MyAppExeName "bin\AStyle.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8845C239-408D-4D00-A7B6-950ABBCBFA02}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={code:DefDirRoot}\AStyle
DefaultGroupName=AStyle
DisableProgramGroupPage=yes
LicenseFile=lgpl-3.0-and-gpl-3.0.rtf
OutputBaseFilename=astyle-with-right-click
Compression=lzma
SolidCompression=yes
PrivilegesRequired=none

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "astyle\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "astylerc"; DestDir: "{app}"; Flags: ignoreversion
Source: "lgpl-3.0-and-gpl-3.0.rtf"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[InnoIDE_Settings]
UseRelativePaths=true

[Code]
function IsRegularUser(): Boolean;
begin
Result := not (IsAdminLoggedOn or IsPowerUserLoggedOn);
end;

function IsPowerfulUser(): Boolean;
begin
Result :=  (IsAdminLoggedOn or IsPowerUserLoggedOn);
end;

function DefDirRoot(Param: String): String;
begin
if IsRegularUser then
Result := ExpandConstant('{localappdata}')
else
Result := ExpandConstant('{pf}')
end;

function RegRoot(): String;
begin
if IsRegularUser then
Result := 'HKCU'
else
Result := 'HKLM'
end;

[Registry]
#define EXT '.cpp'
#include "per-filetype.iss"

#define EXT '.cxx'
#include "per-filetype.iss"

#define EXT '.cc'
#include "per-filetype.iss"

#define EXT '.c'
#include "per-filetype.iss"

#define EXT '.h'
#include "per-filetype.iss"

#define EXT '.hpp'
#include "per-filetype.iss"

#define EXT '.hxx'
#include "per-filetype.iss"

#expr SaveToFile("debug.iss")
