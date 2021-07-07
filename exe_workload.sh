#NOW=$(date)
#echo NOW: ${NOW}
EXE_TIME=$(date -d "+3 sec")
#echo ${EXE_TIME}
while :
do
	NOW=$(date)
	#echo ${NOW}
	#echo ${EXE_TIME}
	if [[ ${NOW} == ${EXE_TIME} ]] ; then
	  echo 3 sec later
	  break
	fi
done
