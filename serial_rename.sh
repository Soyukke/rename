#!/bin/bash
# INPUT: $1:head, $2:tail, $3:ndigit, $4:min, $5:max
# OUTPUT:
# FUNCTION: rename file name. for example, ${head}1${tail} to ${head}001${tail}
head=$1
tail=$2
ndigit=$3
min=$4
max=$5

for ((i=${min};i<${max};i++))
do
  format=\%0${ndigit}d
  formatted=$(printf ${format} $i)
  mv ${head}${i}${tail} ${head}${formatted}${tail}
done
