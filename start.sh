if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com//coolboy007/EvaMari.git /EvaMari
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMari
fi
cd /EvaMari
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
