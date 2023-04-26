if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sanju1t85/Official-Crazy-Princess.git /Official-Crazy-Princess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Official-Crazy-Princess
fi
cd /Official-Crazy-Princess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
