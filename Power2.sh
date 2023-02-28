#!/bin/bash

read -p "enter s value required power of 2:" n
for ((i=1; i<=$n; i++))
do
      echo "2^$i=$((2**i))"
done
