# Windowss 7 修改檔案總管預設開起路徑為我的電腦

右鍵 Windows 檔案總管 -> 內容 -> 將目標替換為底下字串
```
%WINDIR%\explorer.exe ::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
```
