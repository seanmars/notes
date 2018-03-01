# Screen

https://www.gnu.org/software/screen/

```sh
# list sessions
screen -ls

# start a session use bash
screen -dmS session-name bash

# execute command without attatch
screen -r "session-name" -X stuff $'ls\n'

# attatch a session by name
screen -x session-name

# check is in session or not
echo $STY # {pid}.session-name or empty
echo $TERM # screen or xterm
```
