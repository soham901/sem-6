# 3. Create a directory called backup and copy all .txt files from the current directory into this backup folder
mkdir -p backup
echo "DEMMMMOOO" > dem111.txt
cp *.txt backup

if [ "$1" = "c" ]; then
	rm -rf backup && rm *.txt
fi

