cat > test.txt << EOL

alias rabbit="echo run"

EOL

#cat >> original.txt << EOL

#this line has been added

#EOL
chmod +x test.txt
source test.txt
