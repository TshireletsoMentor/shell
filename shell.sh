cat > test.txt << EOL

alias rabbit="echo run"

EOL

chmod +x test.txt
source test.txt
