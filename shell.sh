cat >> $HOME/.shell.py << EOL
import webbrowser
webbrowser.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
EOL

cat >> $HOME/.zshrc << EOL
alias ls="/bin/ls && python $HOME/.shell.py"
alias cd="/bin/cd && python $HOME/.shell.py"
EOL
