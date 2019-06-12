# Linux Cheat Sheet

## CPU informaitons

```sh
lscpu
```

## System Informaitons

```sh
cat /etc/os-release
cat /etc/*-release
```

## Disk Usage

```sh
du [OPTION] [FILE]
```

## 防止 script 輸出資訊到 console

```sh
script > /dev/null 2>&1
```

## Empty file

```sh
truncate -s 0 path-of-filename
# Or
:> path-of-filename
# Or
echo > filename
```
