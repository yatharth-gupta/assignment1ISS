read -p "Enter string:" string
    len=${#string}
for ((i = $len - 1; i >= 0; i--))
    do
    reverse="$reverse${string:$i:1}" 
    done
        echo "$reverse"
echo Enter a string
read str
n=`expr "$str" : "$str"`
declare -a arr

for((i=$n - 1;i>=0;i--))
do

  y=${str:i:1}   
    y=$(echo "$y" | tr "0-9a-z" "1-9a-za" | tr "0-9A-Z" "1-9A-ZA")
   # let arr=`expr $arr + 1`
  
    echo -n "$y"
    
done
echo
read -p "Enter string:" string

    len=${#string}

for ((i = $len/2-1; i >=0 ; i--))
    do

    reverse1="$reverse1${string:$i:1}" 
    done
    for ((i = $len/2; i <= $len-1; i++))
    do

    forward="$forward${string:$i:1}" 
    done
    echo "$reverse1$forward"