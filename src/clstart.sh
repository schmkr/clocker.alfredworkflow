#/bin/bash
source ./clocker.sh

clockerStatus=$(clocker status);
if [ "$clockerStatus" != "stopped" ]
then
	clocker stop
fi

clocker start -t '{query}';

echo "Clocker started {query}!"

