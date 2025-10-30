if [ $# -ne 2 ] 
then
	echo -e "2 args must be present.\n Arg 1: Directory \n Arg 2: Seach String"
	exit 1
fi

files_dir=$1
search_str=$2

if [ ! -d "$files_dir" ]
then
	echo "${files_dir} must be a directory"
	exit 1
fi


lines_count=$(grep -r "$search_str" "$files_dir" | wc -l )
files_count=$(grep -rl "$search_str" "$files_dir" | wc -l)
echo "The number of files are $files_count and the number of matching lines are $lines_count"
exit 0
