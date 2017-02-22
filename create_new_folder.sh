#!/bin/bash

if [ "$#" != 1 ]; then
	echo -e "Usage : \r\n\t$0 \"Description\""
	exit 1
fi

get_max_number(){
	return `ls | sort -n | tail -n 1`
}

get_max_number
max_number=$?

echo "当前最大文件夹序号为 : $max_number"
((new_folder_name=$max_number+1))
if [ $new_folder_name -lt 10 ] ; then
	new_folder_name='0'${new_folder_name}
	echo "当前文件夹数小于 10 , 因此前面补 0"
fi
echo "新文件夹名 : " $new_folder_name
mkdir $new_folder_name
get_max_number
max_number_after=$?
((result=$max_number_after-$max_number))
if [[ "$result" -ne 1 ]] ; then
	echo '创建失败!'
	exit 1
fi

echo "新文件夹( $new_folder_name )创建成功 , 当前最大序号为 : " $max_number_after
cd $new_folder_name

cp ../templates/* ./

touch README.md
echo '简介' > README.md
echo '```' >> README.md
echo "$1" >> README.md
echo '```' >> README.md
