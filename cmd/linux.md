# #符號
| 符號 	| 描述 	|
|:-----:	|:--------------------------------------------------------------------:	|
| # 	| 註解符號：這個最常被使用在 script 當中，視為說明！在後的資料均不執行 	|
| \\ 	| 跳脫符號：將『特殊字元或萬用字元』還原成一般字元 	|
| \| 	| 管線 (pipe)：分隔兩個管線命令的界定 	|
| ; 	| 連續指令下達分隔符號：連續性命令的界定 (注意！與管線命令並不相同) 	|
| ~ 	| 使用者的家目錄 	|
| $ 	| 取用變數前置字元：亦即是變數之前需要加的變數取代值 	|
| & 	| 工作控制 (job control)：將指令變成背景下工作 	|
| ! 	| 邏輯運算意義上的『非』 not 的意思！ 	|
| / 	| 目錄符號：路徑分隔的符號 	|
| >,>> 	| 資料流重導向：輸出導向，分別是『取代』與『累加』 	|
| <,<< 	| 資料流重導向：輸入導向 (這兩個留待下節介紹) 	|
| ' ' 	| 單引號，不具有變數置換的功能 ($ 變為純文字) 	|
| " " 	| 具有變數置換的功能！ ($ 可保留相關功能) 	|
| \` \` 	| 兩個『 ` 』中間為可以先執行的指令，亦可使用 $( ) 	|
| ( ) 	| 在中間為子 shell 的起始與結束 	|
| { } 	| 在中間為命令區塊的組合！ 	|

ref: [鳥哥的 Linux 私房菜](http://linux.vbird.org/linux_basic/0320bash.php#settings_wildcard)

==========

# #uname
  -a, --all print all information
  
	$ uname -a

# #diff
  -q   Report only whether the files differ, not the details of the differences.
  -r   When comparing directories, recursively compare any subdirectories found.
  
	$ diff -qr dirA dirB

# #diff, grep, awk

	$ diff -r dir1 dir2 | grep dir1 | awk '{print $4}' > difference.txt

==========

# #tree
tree command installation on a Linux

By default the tree command is not installed. Type the following command to install the same on a RHEL / CentOS / Fedora Linux using yum command:
# #yum install tree

If you are using Debian / Mint / Ubuntu Linux, type the following apt-get command to install the tree command:

	$ sudo apt-get install tree

==========

# #apt



==========

# #ps

Show Running Processes

    -A: select all processes
    a: select all processes on a terminal, including those of other users
    x: select processes without controlling ttys

>

	$ ps aux | less

# #kill
	
    -2: 這個訊號與鍵盤輸入 Ctrl + C 是同樣的動作，也是通知程式停止執行。
    -9: 立刻強制停止程式執行。
    -15: 以正常的程序通知程式停止執行，這是預設的訊號。
    -l: 列出所有可用的訊號。

>

	$ kill PID

# #killall

    -e, --exact：在程式名稱完全比對成功時，才中止程式。如果程式的名稱超過 15 個字元，其餘的字元在系統中會被捨去，這時候在預設的狀況下，killall 會把所有符合前 15 個字元的程式都中止掉，如果加上 -e 參數的話，killall 指令就會跳過這種名稱過長的程式。
    -I, --ignore-case：在比對程式名稱時，英文大小寫視為相同（ignore case）。
    -i, --interactive：在中止程式之前，先以互動式的方式詢問。
    -l, --list：列出所有的訊號（signal）名稱。
    -r, --regexp：使用常規表示法（regular expression）指定程式名稱。
    -s, --signal：指定送出的訊號（signal）。
    -u, --user：只中止指定使用者所執行的程式。
    -o, --older-than：指定程式的開始執行時間點，必須在此時間點之前。
    -y, --younger-than：指定程式的開始執行時間點，必須在此時間點之後。

>

    $ killall processname
	
# #How to fix the GPG error “NO_PUBKEY”?

reference: [GPG error: http://ppa.launchpad.net precise Release: The following signatures couldn't be verified because the public key is not available](http://askubuntu.com/questions/308760/w-gpg-error-http-ppa-launchpad-net-precise-release-the-following-signatures)

    $ apt-key adv --keyserver keyserver.ubuntu.com --recv-keys <key>

# #apt-get

	$ apt-get install <package-name>
	$ apt-get purge --auto-remove <package-name>
	$ apt-cache search packge

# #rsync

	# recursive
	rsync -r source/ destination/
	# delete extraneous files from destination dirs
	rsync --delete  source/ destination/
	# exclude from file
	rsync --exclude-from 'exclude-list.txt' source/ destination/
	# exclude-list.txt
	dir # specific directory
	dir* # multiple directories that matches a pattern
	/dirA/dirB/test.txt # path relative
	test.txt # specific file
	*.txt # specific file type
	# show progress during transfer
	rsync --progress source/ destination/

# #groups

	# list user in groups
	groups userName-Here
	# List all members of a group using /etc/group file
	grep 'grpup-name-here' /etc/group
	
# #手動向DHCP Server取得IP

	dhclient

# #Network

	# 啟用/關閉網路卡	
	ifup {interface}
	ifdown {interface}
	
	# check
	ifconfig
