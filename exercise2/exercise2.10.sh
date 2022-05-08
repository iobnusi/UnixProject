#!/bin/bash

read -p "Please enter your first name: " name
read -p "Please enter your birth year: " year

cyear=`date +%Y`
age=$(( cyear-year))
echo "Hello $name! You are currently $age years old"

