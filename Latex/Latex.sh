#!/bin/bash

prereqs=""

package="texlive texlive-base"

specialInstall=""

specialRemoval=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
