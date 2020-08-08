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

HH=0
HT=0
TH=0
TT=0
j=0
double=0
declare -A dict1
while [ $double -lt 200 ]
do
   randomCheck=$((RANDOM%4))
   if [ $randomCheck -eq 0 ]
   then
      ((HH++))
   dict1[ "$j" ]="HH"
   elif [ $randomCheck -eq 1 ]
        then
      ((HT++))
      dict1[ "$j" ]="HT"
        elif [ $randomCheck -eq 2 ]
        then
                ((TH++))
                 dict1[ "$j" ]="TH"
        else
                ((TT++))
                 dict1[ "$j" ]="TT"
   fi
((j++))
((double++))
done
totalNumberOfFliping2=$j
echo "Flipping in duplet : $totalNumberOfFliping2 HH:$HH HT:$HT TH:$TH TT:$TT "
HHPercentage=$((($HH*100)/$totalNumberOfFliping2))
echo "HHPercentage:$HHPercentage"
HTPercentage=$((($HT*100)/$totalNumberOfFliping2))
echo "HTPercentage:$HTPercentage"
THPercentage=$((($TH*100)/$totalNumberOfFliping2))
echo "THPercentage:$THPercentage"
TTPercentage=$((($TT*100)/$totalNumberOfFliping2))
echo "TTPercentage:$TTPercentage"
