#NOW=$(date)
#echo NOW: ${NOW}
#EXE_TIME=$(date -d "+3 sec")
#echo ${EXE_TIME}

NOW=$(date +%M) #This will be standard input
num=1
EXE_TIME=$(expr ${NOW} + ${num})
#echo ${EXE_TIME}


#echo -n "Type timestamp to execute"
#read EXE_TIME
#echo ${EXE_TIME}


while :
do
	NOW=$(date +%M)
	#echo ${NOW}
	#echo ${EXE_TIME}
	if [[ ${NOW} == ${EXE_TIME} ]] ; then
	  echo Execute
	  break
	fi
done
