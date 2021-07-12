#!/bin/sh
export CURDIR=$(basename "$PWD")
echo "Generating list of directory $CURDIR"
ls
echo "Generating ..."
ls | egrep '(INFORMATION-README|odp|txt|bin|docs|jpg|png|apk|zip|rar)' |  #filter the content you want in the index
perl -e 'print "<html><body bgcolor=#dcf9fa><p><center>ahiSKY</center><p><center><h3>androians-hi SKY Developing</h3></center><p><center><hr noshade width=50%><font size=+2>Index of directory docs</font><ul><li><a href=..>.. (Parent)</a>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</li></ul><hr noshade width=50%></center><p><center></center><p><center><address>C. SysOP - &copy 2009 BKN Network Systems<br></adress>"' > index.html
echo "Powered by mkindex. Last updated on $(date)</center></body></html>" >> index.html
echo "Generated : Time $(date) previous"
echo "Here is the content of your file"
echo "================================"
cat index.html
echo "================================"
echo "Script finished"
