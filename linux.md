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

# apache2

check status
/etc/init.d/apache2 status