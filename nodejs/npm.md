- Uninstall a package installed using npm link

```bash
npm rm --global foo
```

- [Command to remove all npm modules globally?](http://stackoverflow.com/questions/9283472/command-to-remove-all-npm-modules-globally)
```bash
npm ls -gp --depth=0 | awk -F/ '/node_modules/ && !/\/npm$/ {print $NF}' | xargs npm -g rm
```
