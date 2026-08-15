OutFile "ClashVergeNextServiceInstaller.exe"

InstallDir "$PROGRAMFILES\ClashVergeNextService"

Page directory
Page instfiles

Section "Install"
    SetOutPath $INSTDIR

    ;FILES_PLACEHOLDER

    WriteUninstaller "$INSTDIR\Uninstall.exe"

    ExecShell "" "$INSTDIR\clash-verge-next-service-install.exe"
SectionEnd

Section "Uninstall"
    ExecWait '"$INSTDIR\clash-verge-next-service-uninstall.exe"'
    Delete "$INSTDIR\*.exe"
    Delete "$INSTDIR\Uninstall.exe"
    RMDir "$INSTDIR"
SectionEnd
