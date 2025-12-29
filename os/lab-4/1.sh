# 1. Perform the following Unix Commands: ln, nl, head, tail, sort, ƒind, uniq, tr, history, pipe, write, wall

[ -f file.txt ] || echo "demo" > file.txt

ln file.txt link_file.txt


nl file.txt


head -n 2 1.sh


tail -n 2 1.sh


sort 1.sh


sort -c 1.sh


sort -n 1.sh


sort -r 1.sh


if [ "$1" = "c" ]; then
	rm link_file.txt file.txt 
fi
