#!/bin/bash
mkdir -p linux_practice/name linux_practice/permission
cd linux_practice/name
touch file1.txt
touch file2.txt
cd ../permission
touch file3.txt
touch file4.txt
cd ../name
rm file1.txt
mv file2.txt show.txt
echo "Hello Linux">>show.txt
cat show.txt
cd ../permission
chmod 644 file3.txt
chmod 644 file4.txt
echo "Changed permission for file3.txt to -rw-r--r--"
echo "Changed permission for file4.txt to -rw-r--r--"
