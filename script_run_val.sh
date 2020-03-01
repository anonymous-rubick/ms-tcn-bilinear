#!/bin/bash

# dataset=gtea
# for i in 1 2 3 4;
dataset=$1
pooling=$2
dropout=$3
epoch=$4

if [ "$dataset" == gtea ]
then
	splits=$(seq 1 4)
else
    if [ "$dataset" == 50salads ]
    then 
	    splits=$(seq 1 5)
    fi
fi



for i in $splits;
do
	python main.py --action=predict --dataset=$dataset --split=$i --pooling=$pooling --dropout=$dropout --epoch=$epoch

        python eval.py --dataset=$dataset --split=$i
	echo $dataset training/eval done: split-"$i"
done

echo ---------------final results -------------------

for i in $splits;
do
        python eval.py --dataset=$dataset --split=$i
done
