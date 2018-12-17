cat rockyou.txt | awk 'length($0) == 6' | grep "^[a-zA-Z0-9 ]*$" > rockyou_6char.txt  
cat rockyou.txt | awk 'length($0) == 7' | grep "^[a-zA-Z0-9 ]*$" > rockyou_7char.txt  
cat rockyou.txt | awk 'length($0) == 8' | grep "^[a-zA-Z0-9 ]*$" > rockyou_8char.txt  
cat rockyou_6char.txt  rockyou_7char.txt rockyou_8char.txt >> rockyou_678.txt   
