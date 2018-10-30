#!/bin/bash

prereqs=""

package="git"

specialInstall=""

specialRemove=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
