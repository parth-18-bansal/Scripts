#!/bin/bash

# for loop

for i in item1 item2 item3
do
    echo ${i}
done

for i in {1..10}
do
    echo ${i}
done

for i in *
do
    echo ${i}
done

for i in $(ls ../files/*.txt)
do
    echo ${i}
done



read -p "tell me the number = " number

factorial=1

for (( i=1; i<=number; i++ ))
do
    factorial=$(( factorial*i ))
done

echo ${factorial}

# {1..5} = this give the list of the number
# * = it represent list of the files in the current working directory.
# ls *.txt = it list all the txt files in the current directory
# $() = return the result of the command inside the bracket to the for loop.