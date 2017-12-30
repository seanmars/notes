# Git Cheat Sheet

## removes staged and working directory changes

```bash
git reset --hard
```

## get the current branch name

```bash
git branch
```

## remove the file and all the histoy of it

```bash
git filter-branch --tree-filter 'rm -rf /path/to/file/or/folder' HEAD
```
