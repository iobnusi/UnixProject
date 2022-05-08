#!/bin/bash

read -p "Please enter a decimal number: " num
echo -n "Binary: "
echo 'obase=2;'"$num" | bc
echo -n "Octal: "
echo 'obase=8;'"$num" | bc
echo -n "Hexadecimal: "
echo 'obase=16;'"$num" | bc
