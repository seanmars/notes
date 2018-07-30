# Git Cheat Sheet

## removes staged and working directory changes

```bash
git reset --hard
```

## get the current branch name

```bash
git branch
```

## git un-track file/folder

Addd the folder to `.gitignore` file.

```bash
# file
git rm --cached </path/of/file>
# folder
git rm -r --cached </path/of/folder>
```

## remove the file and all the histoy of it

```bash
git filter-branch --tree-filter 'rm -rf /path/to/file/or/folder' HEAD
```

## reset only one file

```bash
git checkout HEAD -- <file-name>
```

## Pushing to a remote

```sh
git push  <REMOTENAME> <BRANCHNAME> 
```

## show history

```bash
git log --oneline --decorate --all --graph
```

## Discard local file modifications

```sh
git checkout -- Gemfile # reset specified path 
git checkout -- lib bin # also works with multiple arguments
```

## Undo local commits

```sh
git reset HEAD~2        # undo last two commits, keep changes
git reset --hard HEAD~2 # undo last two commits, discard changes  
```

## Remove a file from git without removing it from your file system

```sh
git reset filename          # or git remove --cached filename
echo filename >> .gitignore # add it to .gitignore to avoid re-adding it
```

## Reverting pushed commits

```sh
 git revert c761f5c              # reverts the commit with the specified id
 git revert HEAD^                # reverts the second to last commit
 git revert develop~4..develop~2 # reverts a whole range of commits
 
 # undo the last commit, but don't create a revert commit 
git revert -n HEAD
```

## Find the commit that broke something after a merge

```sh
 git bisect start         # starts the bisecting session
 git bisect bad           # marks the current revision as bad
 git bisect good revision # marks the last known good revision
 
 # After this git will automatically checkout a revision halfway between the known 
 # “good” and “bad” versions. You can now run your specs again and mark the commit as 
 # “good” or “bad” accordingly.
 git bisect good          # or git bisec bad
```

