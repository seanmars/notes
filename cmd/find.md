# find

- 找出符合 reg 的檔案名稱

```bash
FILE_PETTERN=*.txt
find . -type f -name "${FILE_PETTERN}"
# with depth
find . -maxdepth 1 -mindepth 1 -type f -name "${FILE_PETTERN}"
# print filename
find . -maxdepth 1 -mindepth 1 -type f -name "${FILE_PETTERN}" -printf '%f\n'
```
