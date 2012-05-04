[Registry]
;Root: HKLM; SubKey: Software\Classes\{#EXT}\shell\Astyle; ValueType: string; ValueData: "Cleanup with AStyle"; Flags: DeleteKey DeleteValue; Check: IsPowerfulUser
;Root: HKLM; SubKey: Software\Classes\{#EXT}\shell\Astyle\command; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" -n --options=""{app}\astylerc"" ""%1"""; Flags: DeleteKey DeleteValue; Check: IsPowerfulUser
;Root: HKCU; SubKey: Software\Classes\{#EXT}\shell\Astyle; ValueType: string; ValueData: "Cleanup with AStyle"; Flags: DeleteKey DeleteValue; 
;Root: HKCU; SubKey: Software\Classes\{#EXT}\shell\Astyle\command; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" -n --options=""{app}\astylerc"" ""%1"""; Flags: DeleteKey DeleteValue;
Root: HKCR; SubKey: {#EXT}\shell\Astyle; ValueType: string; ValueData: "Cleanup with AStyle"; Flags: DeleteKey DeleteValue
Root: HKCR; SubKey: {#EXT}\shell\Astyle\command; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" -n --options=""{app}\astylerc"" ""%1"""; Flags: DeleteKey DeleteValue
