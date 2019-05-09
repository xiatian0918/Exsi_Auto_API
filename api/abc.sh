#!/bin/bash
echo "1.chuanjianwenjian"
echo "2.shanchuwenjian"
echo "3.oushu"
echo "4.charu"
echo "0.tuichu"
echo "6.please input 0-4"
read z
while [[ $z -gt 4 ]] || [[ $z -eq "a-z" ]]
do
  echo "please input 0-4"
  read z
done
case $z in
  1) echo "1.chuangjian"
  read a
  touch ${a}.txt
     echo "tianshu"
  read b
  echo $b >> ${a}.txt
  ;;
  2) echo "2.shanchuwenjian"
  read c
  rm -rf /home/zhaoqiang/${c}
  ;;
  3) echo "3.oushu"
  read d
  for d in `cat 234.txt`
  do
    if [ $(($d%2)) -eq 0 ] ; then
        echo $d       
    fi
  done  
  ;;
  4) echo "4.charu"
  read e
  for e in `cat 234.txt`
  do
     if [ $(($e%2)) -eq 1 ] ;then
        echo $e + 10 | bc >> 234.txt
     fi
  done
  ;;
  0) echo "0.tuichu"
     exit
  ;;
esac
