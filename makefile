all: clean README.md

README.md:
	touch README.md
	echo "# The Unix workbench peer-graded assignment" > README.md
	echo "" >> README.md
	echo "Today's *date* is: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of lines contained in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l | sed -e 's/^[ \t]*//' >> README.md
	echo ""
	
clean:
	touch README.md
	rm README.md


