# Update Prompt
I really like the update mechanism of [oh my zsh](https://github.com/robbyrussell/oh-my-zsh), which reminds you to get updates if you haven't been asked for some days.

![](https://i.imgur.com/I0QFr23.jpg)

In some Linux destribution, such as Ubuntu, every time you log in, the defualt welcome message also tells you whether you have some available package updates. I am a MacOS user, and I use [Homebrew](https://brew.sh/index_zh-tw.html) and [Homebrew-Cask](https://caskroom.github.io) as my packages and apps managers. Howevery, these two managers do not provide such reminding functionality. This light and simple script will help you by reminds you to do some updates if you haven't been ask for some days.

## Installation
You can get this aids with the following command:

	curl https://raw.githubusercontent.com/LSChyi/update_prompt/master/install.sh | bash
	
, and this will create a hidden folder under your home directory. After that, you need to configure what script to execute if you haven't been remainds for some days. You can simply try my reminder update script, but be sure you have installed [Homebrew](https://brew.sh/index_zh-tw.html), [Homebrew-Cask](https://caskroom.github.io) and [brew-cask-upgrade](https://github.com/buo/homebrew-cask-upgrade) is tapped:

	cd ~/.update_prompt
	cp prompt_script.sh.example prompt_script.sh

. The last thing you need to do is to add one line to invoke this script every time you open a terminal. If you use bash, you can achieve this by:

	echo "source ~/.update_prompt/check_update.sh" >> .bashrc

, or if you use zsh, you can add this line to your .zshrc:

	echo "source ~/.update_prompt/check_update.sh" >> .zshrc
	
. With this setting, if I haven't been asked to check updates for 7 days, I would get such message when I open a terminal:

![](https://i.imgur.com/WTiiaiR.png)
	
.
	
## Uninstall
Simple remove the directory ~/.update_prompt with:
	
	rm -rf ~/.update_prompt

## Usage
The default remaind interval is 7 days, and you can change it in the check_update.sh. Also, you can set any prefered script inside the `prompt_script.sh`
