#!/bin/bash

TRIGGER_INTERVAL=7 # unit: days

test -e ~/.update_prompt/update_date
if [ $? -ne 0 ]; then
    date +"%Y-%m-%d" > ~/.update_prompt/update_date
fi

if [ `uname` = "Darwin" ]; then
    current_epoch=$(date -j -f "%Y-%m-%d" `date +"%Y-%m-%d"` "+%s")
    last_epoch=$(date -j -f "%Y-%m-%d" `cat ~/.update_prompt/update_date` "+%s")
elif [ `uname` = "Linux" ]; then
    current_epoch=$(date -d `date +"%Y-%m-%d"` +"%Y-%m-%d")
    last_epoch=$(date -d `cat ~/.update_prompt/update_date` +"%Y-%m-%d")
else
    echo "Your system is currently not supported"
    return 0
fi

interval_epoch=$(($current_epoch-$last_epoch))
interval_days=$(($interval_epoch/60/60/24))
if [ $interval_days -ge $TRIGGER_INTERVAL ]; then
    date +"%Y-%m-%d" > ~/.update_prompt/update_date
    bash ~/.update_prompt/prompt_script.sh
fi
