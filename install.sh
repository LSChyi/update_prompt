#!/bin/bash

git clone https://github.com/LSChyi/update_prompt.git --depth=1 ~/.update_prompt
if [[ $SHELL =~ ^.*zsh$ ]]; then
    echo "source ~/.update_prompt/check_update.sh" >> ~/.zshrc
elif [[ $SHELL =~ ^.*bash$ ]]; then
    echo "source ~/.update_prompt/check_update.sh" >> ~/.bashrc
else
    echo "remember to add 'source ~/.update_prompt/check_update.sh' into your shell rc file"
fi
