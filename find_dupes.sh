exportdir=export

# Find duplicates
find ./${exportdir} ! -empty -type f -name '*.eml' -exec md5sum {} + | sort | uniq -w32 -dD