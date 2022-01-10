while true
do
	for file in /home/pi/infosoffa2-slides/images/*
	do
                interpreter=${file#*.}

                if [ "$interpreter" == $file ]
		then
			interpreter=cat
		fi

		if [ $(($RANDOM%100)) -lt 1 ]
                then
			$interpreter "$file" | better_lolcat/a.out
			exit_code=$?
		else
			$interpreter "$file"
			exit_code=$?
		fi
		if [ $exit_code -ne 100 ]
		then
			sleep 10
		fi
		clear
	done
done
