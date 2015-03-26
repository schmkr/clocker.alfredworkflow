#/bin/bash
source clocker.sh;

clockerStatus=$(clocker status);
if [ "$clockerStatus" == "stopped" ]
then
	echo "There was no running clocker"
else
	clocker stop;
	echo $(clocker list | tail -n1)
fi
