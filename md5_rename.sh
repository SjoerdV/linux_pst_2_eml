count=0
exportdir=export
while read LINE; do 
    echo "$LINE"
    path=$(dirname "$LINE")
    md5=$(md5sum "${LINE}" | awk '{print $1}')
    action=$(mv "${LINE}" "${path}/${md5}.eml")
    let count=count+1
done < <(find ./${exportdir} -type f -name '*.eml')
echo "Total Files Renamed: " $count