# Linux Cheat Sheet

## CPU informaitons

```sh
# Need install util-linux*
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
source script.sh > /dev/null 2>&1
```

  `>` 是重新導向, 以上的例子是將 script.sh 的執行結果重新導向到 `/dev/null`.

  `/dev/null` 在 Unix 或 Linux 就像黑洞, 會將任何導入的東西吃掉, 簡單來說就是不會輸出任何執行結果.

  `2` 是系統將標準輸入/輸出分成三個, 分別是 stdin(fd 是 0), stdout(fd 是 1), 及 stderr(fd 是 2), 在這裡 `2` 代表標準錯誤輸出 stderr.

  `&` 是設定使用 fd 代號, 如果 `> dev/null 2>&1` 沒有加上 `&`, 會視後面的 `1` 為檔案名稱, 而不是 fd.

  `1` 是 fd 的標準輸出 stdout.

  所以 `> /dev/null 2>&1` 的意思就是將程式的所有標準輸出 stdout, 及標準錯誤輸出 stderr 導向到 `/dev/null`, 即程式只會執行而不會輸出任何執行的結果

## Empty file

```sh
truncate -s 0 path-of-filename
# Or
:> path-of-filename
# Or
echo > filename
```
