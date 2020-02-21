cd $HOME
cat >> original.txt << EOL
alias rabbit="echo run"
EOL

cat >> .zshrc << EOL
source ./original.txt
EOL
