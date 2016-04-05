set -e

if [ -d /jobs ]; then
  cd /jobs
  tar xzf *.tar.gz
  cd /jobs/jobs/
  npm i
else
  echo "=> You don't have an meteor app to run in this image."
  exit 1
fi

#if [[ $REBUILD_NPM_MODULES ]]; then
#  if [ -f /opt/meteord/rebuild_npm_modules.sh ]; then
#    cd programs/server
#    bash /opt/meteord/rebuild_npm_modules.sh
#    cd ../../
#  else
#    echo "=> Use meteorhacks/meteord:bin-build for binary bulding."
#    exit 1
#  fi
#fi

# Set a delay to wait to start meteor container
if [[ $DELAY ]]; then
  echo "Delaying startup for $DELAY seconds"
  sleep $DELAY
fi

# Honour already existing PORT setup
# export PORT=${PORT:-80}

echo "=> Starting Job server"
node server.js
