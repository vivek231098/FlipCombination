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
totalNumberOfFliping=$i
echo "Flipping Coin in singlet: $totalNumberOfFliping Heads:$H Tails:$Tails "
HeadsPercentage=$((($Heads*100)/$totalNumberOfFliping))
echo "HeadsPercentage:$HeadsPercentage"
TailsPercentage=$((($Tails*100)/$totalNumberOfFliping))
echo "TailsPercentage:$TailsPercentage"
