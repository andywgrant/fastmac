# disable spotlight indexing
sudo mdutil -i off -a
sudo su -l
/usr/bin/dscl . -passwd /Users/runner gui-runner123
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -off -restart -agent -privs -all -allowAccessFor -allUsers
# Reverse tunnel to screen share port
mkdir /tmp/gui
curl -o /tmp/gui/z.$$ https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip && (cd /tmp/gui && unzip /tmp/gui/z.$$) && rm /tmp/gui/z.$$
/tmp/gui/ngrok authtoken 1hTflrwncelU7Uexv9bmSYiHKOl_54pPSvNe5XxEydJm1uHD4 --config /tmp/gui/ngrok.yml
/tmp/gui/ngrok tcp 5900 -log=stdout --config /tmp/gui/ngrok.yml > /dev/null &
exit
