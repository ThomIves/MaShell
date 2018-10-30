#!/bin/bash

# From your project directory
npm init
install various npm things including web3.js and truffle
do stuff ...

prereqs=""

package=""

specialInstall=""

specialRemove=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"

