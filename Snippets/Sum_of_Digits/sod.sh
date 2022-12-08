#
# Return the sum of the digits of the set of given numbers.
#
# This places the result in the variable digit_sum.
#
function digit_sum () {
    digit_sum=0
    for num in "$@"
    do  while ((num > 0))
        do    ((digit_sum += num % 10))
              ((num       /= 10))
        done
    done
}

function digit_sum1 () {
    digit_sum=0
    num=$1
    while ((num > 0))
    do    ((digit_sum += num % 10))
          ((num       /= 10))
    done
}

while read -a n
do    if ((${#n} == 1))
      then digit_sum1 ${n[0]}
      else digit_sum  ${n[@]}
      fi
      echo $digit_sum
done

