#!/bin/bash

prereqs=""

package=""

specialInstall=""

specialRemoval=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
