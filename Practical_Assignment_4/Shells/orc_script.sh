echo "scripts started" > script.log
/users/pgrad/sharmaas/Downloads/JTR2/run/john --session=PBKDF2 --format=PBKDF2-HMAC-SHA256-opencl -w=/users/pgrad/sharmaas/Downloads/wordlist/rockyou.txt /users/pgrad/sharmaas/Downloads/myhashes/pbkdf2.hash
echo "step 1 completed" >> script.log
/users/pgrad/sharmaas/Downloads/hashcat-4.2.1/hashcat64.bin -w 4 -a 0 -m 15100 --session=SHA1 "/users/pgrad/sharmaas/Downloads/myhashes/SHA1.hash" /users/pgrad/sharmaas/Downloads/wordlist/rockyou.txt -O
echo "step 2 completed" >> script.log
/users/pgrad/sharmaas/Downloads/hashcat-4.2.1/hashcat64.bin -w 4 -a 0 -m 1800 --session=SHA512 "/users/pgrad/sharmaas/Downloads/myhashes/SHA512.hash" /users/pgrad/sharmaas/Downloads/wordlist/rockyou.txt -O
echo "step 3 completed"

