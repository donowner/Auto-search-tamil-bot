if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/donowner/File-Sharing-Bot.git /Auto-search-tamil-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Sharing-Bot
fi
cd /File-Sharing-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
