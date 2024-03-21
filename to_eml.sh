count=0
exportdir=export
mkdir -p ${exportdir}
for i in $(find | grep ".pst")
do
  echo "Working on "$i
  readpst -M -q -b -cv -e -o ${exportdir} ${i}
  count=$((count+1))
done
echo "Total PSTs Converted: " $count