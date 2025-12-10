# 1. Copy a file file.txt to a new location backup/file.txt, then move it to diet/file.txt
[ -f file.txt ] || echo "demo" > file.txt
mkdir -p backup
cp file.txt backup/file.txt

if [ "$1" = "c" ]; then
	rm -rf backup && rm file.txt
fi

