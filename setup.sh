#!/bin/bash
#
#
#
if ! command -v zsh &> /dev/null; then
	echo "zsh n'est pas installer."
	echo "installation en cour"
	sudo apt-get update
	sudo apt-get install zsh
fi
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Oh-my-Zsh n'est pas installé."
	echo " Intallation en cour ..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

script_a_rendre_executable="/home/$USER/ohmyzsh/tools/install.sh"

if [ -f "$script_a_rendre_executable" ]; then
    chmod +x "$script_a_rendre_executable"
    echo "$script_a_rendre_executable est maintenant exécutable."
else
    echo "$script_a_rendre_executable n'a pas été trouvé."
fi

script_a_executer= $script_a_rendre_executable

if [ -f "$script_a_executer" ]; then
    echo "Exécution de $script_a_executer..."
    "$script_a_executer"
else
    echo "$script_a_executer n'a pas été trouvé."

fi

mv /home/$USER/my_alias/.* ~/.

source ~/.zshrc_perso
rm -rf ~/my_alias

echo " les alias ont bien ete telecharger" 

