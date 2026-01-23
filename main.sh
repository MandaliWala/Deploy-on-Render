if [ -z $UPSTREAM_REPO ]
then
  echo "Clone karne ke liye UPSTREAM_REPO mai repo url toh do !!!! "
  exit 1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO
fi

# Upgrade pip and install requirements
repo_name=$(basename "$UPSTREAM_REPO")
cd $repo_name
pip install -U pip && pip install -U -r requirements.txt

# Start bot
echo "Starting Bot....✨"

if [ -z $START_CMD ]
then
  echo "koi START_CMD nahin diya hai isiliye python3 bot.py run ho raha hai"
  python3 bot.py
else
  echo "running $START_CMD "
  $START_CMD
fi
