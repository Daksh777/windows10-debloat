# Source
These scripts are taken from https://github.com/W4RH4WK/Debloat-Windows-10

## Known issues
### Start menu Search

After running the scripts, the start menu search-box may no longer work on newly
created accounts. It seems like there is an issue with account initialization
that is triggered when disabling the GeoLocation service. Following workaround
has been discovered by BK from Atlanta:

1. Delete registry key `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc\TriggerInfo\3`
2. Re-enable GeoLocation service (set startup type to `Automatic`)
3. Reboot
4. Login with the account having the stated issue
5. Start Cortana and set your preferences accordingly (web search and whatnot)

You may now disable the GeoLocation service again, the search box should remain
functional.

### Sysprep will hang

If you are deploying images with MDT and running these scripts, the sysprep
step will hang unless `dmwappushservice` is active.

### Xbox Wireless Adapter

Apparently running the stock `remove-default-apps` script will cause Xbox
Wireless Adapters to stop functioning. I suspect one should not remove the Xbox
App when wanting to use one. But I haven't confirmed this yet, and there is a
workaround to re-enable it afterwards. See
[#78](https://github.com/W4RH4WK/Debloat-Windows-10/issues/78).

### Issues with Skype

Some of the domains blocked by adding them to the hosts-file are required for
Skype. I highly discourage using Skype, however some people may not have
the option to use an alternative. See the
[#79](https://github.com/W4RH4WK/Debloat-Windows-10/issues/79).

### Fingerprint Reader / Facial Detection not Working

Ensure *Windows Biometric Service* is running. See
[#189](https://github.com/W4RH4WK/Debloat-Windows-10/issues/189).
