#!/bin/sh

sudo curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/b64 > /bin/b64
sudo curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/backup > /bin/backup
sudo curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/diffpaths > /bin/diffpaths
sudo curl https://raw.githubusercontent.com/softctrl/linux-scripts/master/utf8convert > /bin/utf8convert

sudo chmod +x /bin/b64
sudo chmod +x /bin/backup
sudo chmod +x /bin/diffpaths
sudo chmod +x /bin/utf8convert

echo "Done!!"
