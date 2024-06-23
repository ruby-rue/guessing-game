 #!/usr/bin/env bash

# Function to count the number of files in the current directory
function count_files {
    local num_files=$(ls -l | grep "^-" | wc -l)
    echo $num_files
}

# Main function for the guessing game
function guessing_game {
    local actual_num=$(count_files)
    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "Guess how many files are in the current directory:"

    while [[ $guess -ne $actual_num ]]; do
        read guess

        if [[ $guess -lt $actual_num ]]; then
            echo "Your guess is too low. Try again:"
        elif [[ $guess -gt $actual_num ]]; then
            echo "Your guess is too high. Try again:"
        fi
    done

    echo "Congratulations! You guessed correctly."
}

# Call the main function
guessing_game

