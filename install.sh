#!/bin/sh
#
#    Install Simple Server by running this command:
#    curl https://raw.github.com/jpsilvashy/simple_server/master/install.sh | sh
#

# Set up the environment. Respect $VERSION if it's set.

  set -e
  SS_ROOT="/usr/local/sbin/simple_server"
  SS_BIN="$SS_ROOT/simple_server"
  [[ -z "$VERSION" ]] && VERSION=0.0.1

  echo "*** Installing Simple Server $VERSION..."

  rm -fr "$SS_BIN"
  mkdir -p "$SS_ROOT"

  cd "$SS_ROOT/bin"
  curl -s https://raw.github.com/gist/1930803/c5b9b6d6579701e2c376f84d5073d8367001bc9e/simple_server.rb > simple_server
  chmod a+x simple_server

  sudo ln -sfn "$SS_BIN" /usr/local/bin

# All done!

  echo "*** Installed"
