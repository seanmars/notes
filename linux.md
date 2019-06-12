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

  \>: 是重新導向, 例如將指令的執行結果寫入到檔案, 而以上的例子是將 /path/to/my-script.sh 的執行結果重新導向到 /dev/null.

  /dev/null: /dev/null 在 Unix 或 Linux 就像黑洞, 會將任何導入的東西吃掉, 簡單來說就是程式會照常執行, 但不會輸出任何執行結果.

  2: 系統將標準輸入/輸出分成三個, 分別是 stdin (fd 是 0), stdout (fd 是 1), 及 stderr (fd 是 2), 在這裡 2 代表標準錯誤輸出 stderr.

  \>: 重新導向.

  &: 設定使用 fd 代號, 如果 "> dev/null 2>&1" 沒有加上 "&", 會視後面的 "1" 為檔案名稱, 而不是 fd.

  1: fd 的標準輸出 stdout.

  簡單來說, "> /dev/null 2>&1" 的意思, 是將左邊程式的所有標準輸出 stdout, 及標準錯誤輸出 stderr 導向到 /dev/null, 即左邊的程式只會執行, 而不會輸出任何程式執行的結果。

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
