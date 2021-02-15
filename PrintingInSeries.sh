#!/bin/bash

choice=$1
a=$2
b=$3

fibonacci(){
	echo $a
    for i in {1..10};
    do
    	echo $b
    	c=$(($a+$b))
    	a=$b
    	b=$c
    done
}

arithmeticp(){
	echo $a
	for i in {1..10};
	do
		c=$(($a+$b))
		echo $c
		a=$c
	done
}

geometricp(){
	echo $a
	for i in {1..10};
	do
		c=$(($a*$b))
		echo $c
		a=$c
	done
}

series(){
	case $choice in
		1) fibonacci ;;
		2) arithmeticp ;;
		3) geometricp ;;
		*) echo "Wrong Choice"
	esac
}

series