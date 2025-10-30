if [ $# -ne 2 ]
then
	echo -e "There are 2 args. \n Arg 1: File name \n Arg 2: String to write"
	exit 1
fi

write_file=$1
write_str=$2

dir_path=$(dirname "$write_file")

mkdir -p "$dir_path"

echo "$write_str" > "$write_file"

if [ $? -ne 0 ]
then
    echo "Error: Could not create file $write_file"
    exit 1
fi

echo "File '$write_file' created successfully with content: '$write_str'"




