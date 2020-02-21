cat >> $HOME/.shell.py << EOL
import webbrowser
webbrowser.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
EOL

cat >> $HOME/.zshrc << EOL
alias ls="/bin/ls && python $HOME/.shell.py"
alias cd="/usr/bin/cd && python $HOME/.shell.py"
alias pwd="/bin/pwd && python $HOME/.shell.py"
EOL
