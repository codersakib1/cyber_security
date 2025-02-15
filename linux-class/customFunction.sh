banner(){
echo "############################################################################################"
echo "#                                                                                          #"
echo "#                                       CUSTOM FUNCTION                                    #"
echo "#                                                                                          #"
echo "############################################################################################"

echo -e "\n"
}


message(){
read -p "Enter your fullname " fullname
echo "Your full name is : "$fullname

read -p "Enter your age " age
echo "Your age is : "$age

}

main(){

echo  "Enter 1 to show IP"
echo "Enter 2 to show MAC"
read -p "select Your option : " option

if [ $option == 1 ];
then
        echo "Your IP address is : " $(hostname -I)
elif [ $option == 2 ];
then
        echo "Your MAC address is: " $(ip link show eth0 | grep link/ether | awk '{print $2}')

elif [ $option == 0 ];
then
	exit

else "WRONG OPTION"
fi

}

for((; ;))
do
banner
message
main
done
