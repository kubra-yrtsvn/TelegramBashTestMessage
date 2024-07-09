# TelegramBashTestMessage

This project demonstrates how to send a test message via Telegram using a Bash script.

## Features
- Sends a test message to a specified Telegram chat.
- Utilizes the Telegram Bot API.
- Simple Bash script for easy setup and use.

## Usage
1. Set up your Telegram bot and get the bot token.
2. Get your Telegram chat ID.
3. Run the provided Bash script to send a test message.

## Requirements
- Bash
- Telegram Bot API

## Setup
1. Clone the repository.
2. Replace `YOUR_BOT_TOKEN` and `YOUR_CHAT_ID` in the script with your bot token and chat ID.
3. Run the script to send a test message.

```bash
#!/bin/bash

BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"
MESSAGE="This is a test message from Bash!"

curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE"

4. Verify the message in your Telegram chat.

## Example
```bash
#!/bin/bash

BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"
MESSAGE="This is a test message from Bash!"

curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE"
