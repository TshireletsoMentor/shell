cat >> $HOME/.zshrc << EOL
alias rabbit="echo run"
EOL

cat >> $HOME/.test << EOL
source $HOME/.zshrc
EOL
