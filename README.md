# lamedns.sh
This is a simple dns update client for DynDns. It uses
[icanhazip.com](http://icanhazip.com) for checking the external address and
saves it to a textfile. The textfile is checked and updates are only done if
the IP has actually changed.

## Files
* `lamedns.sh` is the actual script to execute
* `de.matthias-endler.lamedns.plist` is a launchd plist file to run the shell script once per hour. Modify this file, put it into `Library/LaunchDaemons` and start execution with `launchctl load /Library/LaunchDaemons/de.matthias-endler.lamedns.plist` from a terminal.

## Credits
Forked from mrtazz/zerigo_dyndns.sh. Only minor adjustments to make it work for DynDns.
