cd $HOME
cat >> original.txt << EOL
alias rabbit="echo run"
EOL
source ./original.txt
