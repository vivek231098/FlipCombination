Heads=0
Tails=0
i=0
declare -A dict
while [[ $Heads -lt 50 || $Tails -lt 50 ]]
do
   randomCheck=$((RANDOM%2))
   if [ $randomCheck -eq 1 ]
   then
      ((Heads++))
   dict[ "$i" ]="Heads"
   else
      ((Tails++))
      dict[ "$i" ]="Tails"
   fi
((i++))
done
