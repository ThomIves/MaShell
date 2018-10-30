#!/bin/bash

prereqs=""

package="virtualbox-qt virtualbox-ext-pack"

specialInstall=""

specialRemoval=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
