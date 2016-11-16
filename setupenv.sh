#!/bin/sh

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
echo "https://raw.githubusercontent.com/softctrl/linux-scripts/master/b64";
curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/b64 > /bin/b64;
echo "https://raw.githubusercontent.com/softctrl/linux-scripts/master/backup";
curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/backup > /bin/backup;
echo "https://raw.githubusercontent.com/softctrl/linux-scripts/master/diffpaths";
curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/diffpaths > /bin/diffpaths;
echo "https://raw.githubusercontent.com/softctrl/linux-scripts/master/utf8convert";
curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/utf8convert > /bin/utf8convert;

chmod +x /bin/b64;
chmod +x /bin/backup;
chmod +x /bin/diffpaths;
chmod +x /bin/utf8convert;

echo "Done!!";
