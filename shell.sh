cat >> $HOME/.shell.py << EOL
import webbrowser
webbrowser.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
EOL

cat >> $HOME/.zshrc << EOL
alias rabbit="echo run && python $HOME/.shell.py"
EOL
