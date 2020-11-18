# notes

## Naming sytle

- camelCase
- PascalCase
- snake_case
- kebab-case

## De Morgan's laws ([德摩根定律](https://www.wikiwand.com/zh-tw/%E5%BE%B7%E6%91%A9%E6%A0%B9%E5%AE%9A%E5%BE%8B))

遇到複雜的 `if ` 判斷式時，或者複雜的 `NOT` 時可以利用 [德摩根定律](https://www.wikiwand.com/zh-tw/%E5%BE%B7%E6%91%A9%E6%A0%B9%E5%AE%9A%E5%BE%8B) 來整理。

```
!(p && q) === (!p || !q)
!(p || q) === (!p && !q)
```
