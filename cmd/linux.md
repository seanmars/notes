# 符號
| 符號 |                                 描述                                 |
|:----:|:--------------------------------------------------------------------:|
|   #  | 註解符號：這個最常被使用在 script 當中，視為說明！在後的資料均不執行 |
|   \  | 跳脫符號：將『特殊字元或萬用字元』還原成一般字元                     |
|   \|  | 管線 (pipe)：分隔兩個管線命令的界定                    |
|   ;  | 連續指令下達分隔符號：連續性命令的界定 (注意！與管線命令並不相同)    |
|   ~  | 使用者的家目錄                                                       |
|   $  | 取用變數前置字元：亦即是變數之前需要加的變數取代值                   |
|   &  | 工作控制 (job control)：將指令變成背景下工作                         |
|   !  | 邏輯運算意義上的『非』 not 的意思！                                  |
|   /  | 目錄符號：路徑分隔的符號                                             |
| >,>> | 資料流重導向：輸出導向，分別是『取代』與『累加』                     |
| <,<< | 資料流重導向：輸入導向 (這兩個留待下節介紹)                          |
|  ' ' | 單引號，不具有變數置換的功能 ($ 變為純文字)                          |
|  " " | 具有變數置換的功能！ ($ 可保留相關功能)                              |
|  \` \` | 兩個『 ` 』中間為可以先執行的指令，亦可使用 $( )                     |
|  ( ) | 在中間為子 shell 的起始與結束                                        |
|  { } | 在中間為命令區塊的組合！                                             |

# diff
  -q   Report only whether the files differ, not the details of the differences.
  -r   When comparing directories, recursively compare any subdirectories found.
  
diff -qr dirA dirB

# diff, grep, awk
diff -r dir1 dir2 | grep dir1 | awk '{print $4}' > difference.txt

==========

# tree
tree command installation on a Linux

By default the tree command is not installed. Type the following command to install the same on a RHEL / CentOS / Fedora Linux using yum command:
# yum install tree

If you are using Debian / Mint / Ubuntu Linux, type the following apt-get command to install the tree command:
$ sudo apt-get install tree

==========

# apt

Search packge
apt-cache search packge

==========
