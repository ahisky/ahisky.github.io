#!/bin/sh
export CURDIR=$(basename "$PWD")
echo "Starting mkindex in $(date)" >> _mkindex.log
echo "Starting mkindex in $(date)"

echo "Generating list of directory $CURDIR" >> _mkindex.log
echo "Generating list of directory $CURDIR"

ls >> _mkindex.log
ls

echo "Generating ..." >> _mkindex.log
echo "Generating ..."

ls | egrep '(INFORMATION-README|odp|txt|bin|docs|jpg|png|apk|zip|rar)' |  #File include
perl -e 'print "<html><body bgcolor=#dcf9fa><p><center>ahiSKY</center><p><center><h3>androians-hi SKY Developing</h3></center><p><center><hr noshade width=50%><font size=+2>Index of directory docs</font><ul><li><a href=..>.. (Parent)</a>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</li></ul><hr noshade width=50%></center><p><center></center><p><center><address>C. SysOP - &copy 2009 BKN Network Systems<br></adress>"' > index.html
echo "Powered by mkindex. Last updated on $(date)</center></body></html>" >> index.html 
echo "Generated automatically: Time $(date) previous"  >> _mkindex.log
echo "Generated automatically: Time $(date) previous"

echo "Here is the content of your file" >> _mkindex.log
echo "Here is the content of your file"
echo "================================" >> _mkindex.log
echo "================================"
cat index.html >> _mkindex.log
cat index.html
echo "================================" >> _mkindex.log
echo "================================"
echo "Script finished" >> _mkindex.log
echo "Script finished"
echo "Log is saved to _mkindex.log" >> _mkindex.log
echo "Log is saved to _mkindex.log"
