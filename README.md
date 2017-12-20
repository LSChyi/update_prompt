# Update Prompt
\*中文使用者可以參考[這篇介紹](https://medium.com/@alan81920/自動提醒更新-bf70320f239a)\*

I really like the update mechanism of [oh my zsh](https://github.com/robbyrussell/oh-my-zsh), which reminds you to get updates if you haven't been asked for some days instead of directly updating without asking.

![](https://i.imgur.com/I0QFr23.jpg)

In some Linux destribution, such as Ubuntu, every time you log in, the default welcome message also tells you whether you have some available package updates. I am a MacOS user, and I use [Homebrew](https://brew.sh/index_zh-tw.html) and [Homebrew-Cask](https://caskroom.github.io) as my packages and apps managers. However, these two managers do not provide such reminding functionality. This light and simple script will help you by reminding you to do some updates if you haven't been asked for some days.

## Installation
You can install this script with the following command:

	curl https://raw.githubusercontent.com/LSChyi/update_prompt/master/install.sh | bash
	
, and this will create a hidden folder under your home directory. After that, you need to configure what script to execute if you haven't been reminded for some days. You can simply try my reminder update script, but be sure you have installed [Homebrew](https://brew.sh/index_zh-tw.html), [Homebrew-Cask](https://caskroom.github.io) and [brew-cask-upgrade](https://github.com/buo/homebrew-cask-upgrade) is tapped:

	cd ~/.update_prompt
	cp prompt_script.sh.example prompt_script.sh

. The installation script also automatically appends one line into your shell rc file to invoke the check update script every time you login to a shell:

    source ~/.update_prompt/check_update.sh

. With this setting, if I haven't been asked to check updates for mor than 7 days, I would get such message when I open a terminal.

![](https://i.imgur.com/WTiiaiR.png)
	
## Uninstallation
Simply remove the directory ~/.update_prompt with:
	
	rm -rf ~/.update_prompt

and remove the line `source ~/.update_prompt/check_update.sh` in your `.zshrc`or `.bashrc`.

## Usage
The default remind interval is 7 days, and you can change it in the check_update.sh. Also, you can set any prefered script inside the `prompt_script.sh`

## Supported Platform
This script currently only supports MacOS and Linux due to the arguments format of the `date` command. You are very welcome to add supports on other platforms and send me a pull request.
