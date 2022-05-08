#!/bin/bash

read -p "Please enter the distance travelled (in meters): " dists
read -p "Please enter the time taken (in seconds): " times

echo -n `echo 'scale=2;'"$dists / $times" | bc` 
echo " m/s"
