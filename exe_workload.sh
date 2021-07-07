#NOW=$(date)
#echo NOW: ${NOW}
#EXE_TIME=$(date -d "+3 sec")
#echo ${EXE_TIME}

NOW=$(date "+%s") #This will be standard input
num=20
plus=$(expr ${NOW} + ${num})
echo ${plus}


echo -n "Type timestamp to execute"
read EXE_TIME
echo ${EXE_TIME}


while :
do
	NOW=$(date "+%s")
	#echo ${NOW}
	#echo ${EXE_TIME}
	if [[ ${NOW} == ${EXE_TIME} ]] ; then
	  echo Execute
	  break
	fi
done
