#!/usr/bin/env bash
# File: guessinggame.sh

count_files() {
    ls -1 | wc -l
}

ask_guess() {
    echo "Combien de fichiers se trouvent dans le repertoire actuel ?"
    read -p "Votre reponse : " guess
    echo "$guess"
}

play_game() {
    local actual
    actual=$(count_files)

    local guess
    guess=$(ask_guess)

    while [[ "$guess" -ne "$actual" ]]
    do
        if [[ "$guess" -lt "$actual" ]]
        then
            echo "Trop bas ! Essayez encore."
        else
            echo "Trop haut ! Essayez encore."
        fi
        read -p "Votre reponse : " guess
    done

    echo "Felicitations ! La bonne reponse est $actual."
}

play_game
