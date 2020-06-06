#!/bin/bash -x

read -p "Enther First No:-" First
read -p "Enther Second NO:-" Second
result=`echo $First $Second | awk '{print ($1/$2)}'` #awk use for Floating-point Number
