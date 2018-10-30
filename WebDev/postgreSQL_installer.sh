#!/bin/bash

prereqs=""

package="postgresql postgresql-contrib pgadmin3"

specialInstall=''

specialRemoval=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
