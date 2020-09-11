# Usage of these scripts
1. Enable execution of PowerShell scripts (via Powershell as administrator): <br> `Set-ExecutionPolicy Unrestricted -Scope CurrentUser`
2. Unblock PowerShell scripts and modules within a directory: <br>
`ls -Recurse *.ps*1 | Unblock-File`
3. Run the scripts: <br>
`.\script_name.ps1`

OR

Use the script enable_script.cmd and run it as administrator.
