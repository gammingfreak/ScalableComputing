#reduced rockyou
cat rockyou.txt | awk 'length($0) >=6 | awk 'length($0) <=8 | grep -a ^[a-zA-Z0-9]*$ > rockyou_reduced.txt
#reduced crackstation
cat crackstation.lst | gawk 'length($0) >=6 | gawk 'length($0) <=8 | grep -a ^[a-zA-Z0-9]*$ > crackstation_reduced.txt
