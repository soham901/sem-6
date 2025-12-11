gap() {
	echo ""
	echo " ----------------- START < $1 > ------------------ "
	echo "$2"
	echo " -----------------  END  < $1 > ------------------ "
	echo ""
}

[ -f file1.txt ] || echo -e "apple\nbanana\ncherry\ndate" > file1.txt
[ -f file2.txt ] || echo -e "banana\ncherry\nfig\ngrape" > file2.txt

gap "Contents of file1.txt:" "$(cat file1.txt)"
gap "Contents of file2.txt:" "$(cat file2.txt)"

gap "1. cmp file1.txt and file2.txt" "$(cmp file1.txt file2.txt 2>&1 || true)"

gap "2. comm file1.txt and file2.txt" "$(comm file1.txt file2.txt)"

gap "3. diff file1.txt and file2.txt" "$(diff file1.txt file2.txt)"

gap "4. chmod - change file permissions" "
Creating a test executable file...
touch test_executable.sh
chmod +x test_executable.sh
ls -l test_executable.sh
chmod 644 test_executable.sh
ls -l test_executable.sh
"

# Prepare files for chown/chgrp demonstration (these may need sudo in practice)
gap "5. chown - change file owner" "
Note: chown typically requires sudo privileges.
Current ownership: $(ls -l file1.txt)
"

gap "6. chgrp - change file group" "
Note: chgrp typically requires sudo privileges.
Current group: $(ls -l file1.txt)
"

gap "7. file - determine file type" "
$(file file1.txt)
$(file /bin/bash)
$(file *.txt)
"

gap "8. finger - show user information" "nathi karvanu aa"

gap "9. sleep - delay execution" "
sleep 3
echo 'Done'
"

# Demonstrate kill and ps commands
gap "10. ps - show processes" "$(ps)"

gap "11. kill - terminate processes" "
\"kill pid\"
"

gap "12. wc - count words, lines, characters" "
Lines, words, characters in file1.txt: $(wc file1.txt)
Lines only: $(wc -l file1.txt)
Words only: $(wc -w file1.txt)
Characters only: $(wc -c file1.txt)
"

# Cleanup if requested
if [ "$1" = "c" ]; then
	rm -f file1.txt file2.txt test_executable.sh
fi
