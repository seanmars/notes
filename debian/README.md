# Debian

## suggestion when command not found

Reference: [how-to-implement-package-install-suggestion-on-debian](https://unix.stackexchange.com/questions/67466/how-to-implement-package-install-suggestion-on-debian)

```sh
sudo apt update
sudo apt install command-not-found
sudo update-command-not-found
sudo apt update
```

Add those lines to your `~/.bashrc` (or `/etc/bash.bashrc`)

```sh
command_not_found_handle() {
  if  [ -x /usr/lib/command-not-found ]; then
     /usr/lib/command-not-found -- "$1" 
     return $?
  else
     return 127
  fi        
}
```
