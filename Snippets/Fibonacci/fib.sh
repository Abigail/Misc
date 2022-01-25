#!/bin/sh

f=0
g=1
declare -A fib
fib[$f]=1
fib[$g]=1

function is_fib () {
    local n=$1
    while (($g < $n))
    do   ((t = g))
         ((g = f + g))
         ((f = t))
         fib[$g]=1  
    done
    is_fib=${fib[$n]:-0}
}


while read n
do  is_fib $n
    echo $is_fib
done
