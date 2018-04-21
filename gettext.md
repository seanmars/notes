---
title: gettext - I18N
tags:
    gettext
    i18n
---

[TOC]

## 簡介

### 檔案

- POT 檔案（Portable Object Template）：.pot 是 .po 的模板檔案；.pot 的內容其實就是翻譯字串都空白的 .po 檔案，只有原始需翻譯的字串的檔案。
- PO 檔案（Portable Object）：.po 就是包含所有翻譯過字串的檔案，每一種語言的都各自有一個 .po 檔案，例如美國英文（American  English）就會有一個 en-US.po 的檔案。
- MO 檔案（Machine Object）：MO 是內容相同於 PO 檔二進位的檔案，方便於被加載或導入到程式中。

### 區域名稱

區域名稱使用 LL_CC，LL 為 language code（可參考[ISO 639](https://www.iso.org/iso-639-language-codes.html)），CC 為  country code（[ISO 3166](https://www.iso.org/iso-3166-country-codes.html)）。

## PO 檔案的格式

```
#. other information by comments
#: path/of/file:line path/of/other/file:line
msgid "foo"
msgstr ""
⁠
#: path/of/file:line
msgid ""
"Hello"
"World"
msgstr ""
"Hello"
"World"
```

### Tags

- \#: => 來源參考
- \#. => 額外的註解
- \# => 翻譯的註解
- \#, => 格式化的風格
- \#, fuzzy => 模糊的 msgid
    - \#| => 之前的 msgid 會以 \#| 註解，若確認翻譯無誤後則需將 \#, fuzzy 及 \#| 刪除。
- \#~ => 過時的字串
    - \#~ msgid
    - \#~ msgstr

## 編輯器

- [Poedit](https://poedit.net/)
- [OmegaT](http://www.omegat.org/)
- [Lokalize](https://userbase.kde.org/Lokalize)

## Reference

- [GNU gettext](https://www.gnu.org/software/gettext/)
- [gettext - Wikipedia](https://en.wikipedia.org/wiki/Gettext)
- [glossary - Translate WordPress](https://make.wordpress.org/polyglots/handbook/glossary/)
- [pology](http://pology.nedohodnik.net)
