README.md: guessinggame.sh
	touch README.md
	echo "Title of the project:" > README.md 
	echo "Bash Script Game for Guessing the Number of Files" >> README.md
	echo >> README.md
	echo "Readme file made at:" >> README.md 
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo >> README.md
	echo "The number of lines contained in guessinggame.sh are:" >> README.md
	cat guessinggame.sh | grep -c "" >> README.md
	echo >> README.md
