echo  "Enter 1 to show IP"
echo "Enter 2 to show MAC"
read -p "select Your option : " option

if [ $option == 1 ];
then
	echo "Your IP address is : " $(hostname -I)
elif [ $option == 2 ];
then
	echo "Your MAC address is: " $(ip link show eth0 | grep link/ether | awk '{print $2}')

else "WRONG OPTION"
fi
