# hashcat -a 3 -m 7400 -w 4 --increment --increment-min 2 --increment-max 6 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?d?d?d?d?d?d -O
# echo "finished step1 in 30mins" >log.txt
# hashcat -a 3 -m 7400 -w 4 --increment --increment-min 5 --increment-max 5 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?l?l?l?l?l -O
#echo "finished step2 >> log.txt
# hashcat -a 3 -m 20 -w 4 --increment --increment-min 8 --increment-max 8 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?l?l?l?l?l?l?l?l -O
echo "finished step2 in 6hours" >> log.txt

echo "starting step3" >> log.txt
hashcat -a 3 -m 500 -w 4 --increment --increment-min 8 --increment-max 8 /home/ubuntu/sc_assignment/hashes/MD5_hash.txt ?d?d?d?d?d?d?d?d -O

echo "starting step4" >> log.txt
hashcat -a 3 -m 500 -w 4 --increment --increment-min 6 --increment-max 6 /home/ubuntu/sc_assignment/hashes/MD5_hash.txt ?l?l?l?l?l -O

echo "starting step5" >> log.txt
hashcat -a 3 -m 7400 -w 4 --increment --increment-min 8 --increment-max 8 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?d?d?d?d?d?d?d?d -O

echo "starting step6" >> log.txt
hashcat -a 3 -m 7400 -w 4 --increment --increment-min 6 --increment-max 6 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?l?l?l?l?l -O

echo "starting step7" >> log.txt
hashcat -a 3 -m 1800 -w 4 --increment --increment-min 8 --increment-max 8 /home/ubuntu/sc_assignment/hashes/SHA512_hash.txt ?d?d?d?d?d?d?d?d -O

echo "starting step8" >> log.txt
hashcat -a 3 -m 1800 -w 4 --increment --increment-min 5 --increment-max 5 /home/ubuntu/sc_assignment/hashes/SHA512_hash.txt ?l?l?l?l?l -O

echo "starting step9" >> log.txt
hashcat -a 0 -m 7400 -w 4 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt /home/ubuntu/sc_assignment/wordlist/rockyou.txt -O

echo "starting step10" >> log.txt
hashcat -a 0 -m 1800 -w 4 /home/ubuntu/sc_assignment/hashes/SHA512_hash.txt /home/ubuntu/sc_assignment/wordlist/rockyou.txt -O

echo "starting step11" >> log.txt
hashcat -a 0 -m 13751 -w 4 /home/ubuntu/sc_assignment/hashes/PBKDF2.txt /home/ubuntu/sc_assignment/wordlist/rockyou.txt -O

echo "starting step12" >> log.txt
hashcat -a 3 -m 13751 -w 4 --increment --increment-min 5 --increment-max 5 /home/ubuntu/sc_assignment/hashes/PBKDF2.txt ?l?l?l?l?l -O

echo "starting step13" >> log.txt
hashcat -a 3 -m 7400 -w 4 --increment --increment-min 5 --increment-max 5 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?l?l?l?l?l -O

echo "starting step14" >> log.txt
./john --format=PBKDF2-HMAC-SHA256-opencl /home/ubuntu/sc_assignment/hashes/PBKDF2.txt

echo "starting step15" >> log.txt
hashcat -a 0 -m 1800 -w 4 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt /home/ubuntu/sc_assignment/wordlist/pocket-dic ?l?l?l?l?l -O
PBKDF2_SHA256.txt

echo "starting step16" >> log.txt
./john --incremental=Ashu /home/ubuntu/sc_assignment/hashes/argon2_hash.txt

echo "starting step17" >> log.txt
hashcat -a 3 -m 7400 -w 4 --increment --increment-min 5 --increment-max 5 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt ?l?l?l?l?l -O

echo "starting step18" >> log.txt
hashcat -a 0 -m 7400 -w 4 --increment --increment-min 6 --increment-max 6 /home/ubuntu/sc_assignment/hashes/SHA256_hash.txt /home/ubuntu/sc_assignment/wordlist/rockyou.txt -O

echo "starting step19" >> log.txt
hashcat -a 3 -m 1500 -w 4 --increment --increment-min 8 --increment-max 8 /home/ubuntu/sc_assignment/hashes/DES.txt ?l?l?l?l?l?l?d?d -O