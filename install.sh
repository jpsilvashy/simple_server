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

# Remove old versions and create new directories
  rm -fr "$SS_BIN"
  mkdir -p "$SS_ROOT"
  cd "$SS_ROOT"

# Download latest script
  curl -s https://raw.github.com/jpsilvashy/simple_server/master/simple_server > simple_server
  chmod a+x simple_server

# Link to location in users PATH
  echo "*** Linking..."
  sudo ln -sfn "$SS_BIN" /usr/local/bin

# All done!
  echo "*** Installed"
