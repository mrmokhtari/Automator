ps -ef | grep fire;
until [$a = 5] 
do 
echo '1. Start Service';
echo '2. Stop Service';
echo '3. Status of Service';
echo '4. Restart Service';
echo '5. Exit';
read a;
	if (($a == 1 )) 
	then
		echo 'Please enter srvice name:'
		read srvname
		sudo systemctl start $srvname
	elif (($a == 2 ))
	then
		echo 'Please enter srvice name:'
		read srvname
		sudo systemctl stop $srvname
	elif (($a == 3 ))
	then
		echo 'Please enter srvice name:'
		read srvname
		sudo systemctl status $srvname
	elif (($a == 4 ))
	then
		echo 'Please enter srvice name:'
		read srvname
		sudo systemctl restart $srvname
	elif (($a == 5 ))
	then
		echo 'Bye!'
	fi
	done

