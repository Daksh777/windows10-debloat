# WLOADER

Windows 10 PRO Activator without using any backdoor loader from China and neither you will need any crack anymore that is valid for a week or two. This is script is written for cmd. This script will 
also removing all bloatware from Windows 10. Edit script after your needs.

# PREVIEW:
![Screnshot](https://github.com/wuseman/WLOADER/blob/master/wloader.gif)

# SLMGR Commands

    slmgr.exe -ato                                    Activate Windows license and product key against Microsoft’s server.
    slmgr.exe -atp                                    Confirmation_ID Activate Windows with user-provided Confirmation   ID.
    slmgr.exe -ckms                                   Clear the name of KMS server used to default and port to default.
    slmgr.exe -cpky                                   Clear product key from the registry (prevents disclosure   attacks).
    slmgr.exe -dli                                    Display the current license information with activation status and   partial product key.
    slmgr.exe -dlv                                    Verbose, similar to -dli but with more information.
    slmgr.exe -dti                                    Display Installation ID for offline activation.
    slmgr.exe -ipk                                    Key Enter a new product key supplied as   xxxxx-xxxxx-xxxxx-xxxxx-xxxxx.
    slmgr.exe -ilc                                    License_file Install license.
    slmgr.exe -rilc                                   Re-install system license files.
    slmgr.exe -rearm                                  Reset the evaluation period/licensing status and activation   state of the machine.
    slmgr.exe -skms activationservername:port         Set the Volume Licensing KMS server   and/or the port used for KMS activation (where supported by your   Windows edition).
    slmgr.exe -skhc                                   Enable KMS host caching (default), this blocks the use of DNS   priority and weight after the initial discovery of a working KMS host.
    slmgr.exe -ckhc                                   Disable KMS host caching. This setting instructs the client to   use DNS auto-discovery each time it attempts KMS activation                          
    slmgr.exe -sai interval                           Sets the interval in minutes for unactivated clients to   attempt KMS connection. The activation interval must be between 15 - 30 days
    slmgr.exe -sri interval                           Sets the renewal interval in minutes for activated   clients to attempt KMS connection. The renewal interval must be between
    slmgr.exe -spri                                   Set the KMS priority to normal (default)
    slmgr.exe -cpri                                   Set the KMS priority to low.
    slmgr.exe -sprt port                              Sets the port on which the KMS host listens for client   activation requests. The default TCP port is 1688.
    slmgr.exe -sdns                                   Enable DNS publishing by the KMS host (default).
    slmgr.exe -cdns                                   Disable DNS publishing by the KMS host.
    slmgr.exe -upk                                    Uninstall current installed product key and return license status   back to trial state.
    slmgr.exe -xpr                                    Show the expiry date of current license (if not permanently   activated).   Token-based activation:
    slmgr.exe -lil                                    List the installed token-based activation issuance licenses. 
    slmgr.exe -ril ILID ILvID                         Remove an installed token-based activation issuance  license. 
    slmgr.exe -stao                                   Set the Token-based Activation Only flag, disabling automatic KMS  activation.
    slmgr.exe -ctao                                   Clear the Token-based Activation Only flag (default), enabling automatic KMS activation.
    slmgr.exe -ltc                                    List valid token-based activation certificates that can activate installed software
    slmgr.exe -fta Certificate Thumbprint             Force token-based activation using the   identified certificate. 

#### REQUIREMENTS

A running Windows 10 Pro, works for any version you will find your keys from Microsoft here: https://docs.microsoft.com/sv-se/windows-server/get-started/kmsclientkeys

#### CONTACT 

If you have problems, questions, ideas or suggestions please contact
us by posting to wuseman@nr1.nu

#### WEB SITE

Visit our homepage for the latest info and updated tools

https://github.com/wuseman

---
wuseman/WLOADER's script. Last updated on December 22 2018.
