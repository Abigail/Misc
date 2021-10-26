#
# Set $is_power_of_n to 1 if number is a power of n, that is, number == n ^ p
# for some non-negative integer p. Set $is_power_of_n to 0 otherwise.
#
function is_power_of_n () {
    local number=$1
    local n=$2
    if   ((number < 1))
    then is_power_of_n=0
    elif ((number == 1))
    then is_power_of_n=1
    elif ((number % n > 0))
    then is_power_of_n=0
    else is_power_of_n $((number / 2)) $n
    fi
}

function is_power_of_2 () {
    is_power_of_n $1 2
    is_power_of_2=$is_power_of_n
}

#
# Places results in $is_power_of_n and $is_power_of_2
#
