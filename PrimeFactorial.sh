read -p "enter an integer:" N
if [ $N -lt 1 ];
then
echo "not allowed!"
exit 1
fi
count=0
flag=0
for ((i=2;i*i<=$N;i++));
do
  if [ `expr $N % $i` -eq 0 ];
then
      factor=$i

  for ((j=2;j<=`expr $factor / 2`;));
    do
      flag=0
      if [ `expr $factor % $j` -eq 0 ];
     then
      flag=1
      break
      fi
      j=`expr $j + 1`
  done
  if [ $flag -eq 0 ];then
  echo "[ $factor ]"
  count=1
  fi
  fi
  i=`expr $i + 1`
  done
  if [ $count -eq 0 ];then
  echo "no prime factors found except 1 and $N"
  fi
