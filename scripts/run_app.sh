set -e

echo "yahoo you are entered"
ls /jobs
if [ -d /jobs ]; then
  echo "yes am in"
  cd /jobs
  tar xzf jobs.tar.gz
  cd /jobs/jobs
  npm i
else
  echo "=> You don't have jobs to run in this image."
  exit 1
fi

echo "=> Starting Job server"
forever --minUptime 2000 --spinSleepTime 1000 server.js
