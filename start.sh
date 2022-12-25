if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/XAVIER-NO-FEATURE.git /XAVIER-NO-FEATURE
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /XAVIER-NO-FEATURE
fi
cd /XAVIER-NO-FEATURE
pip3 install -U -r requirements.txt
echo "Starting Xavier...."
python3 bot.py
