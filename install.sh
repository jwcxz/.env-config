#!/bin/sh

. `dirname $0`/common/common.sh

MODULES=`find "$(calling_script_dir)" -maxdepth 1 -and -type d -and -not -name "common" -and -not -name ".*" -and -not -name ".."`

for MODULE in $MODULES; do
    pushd "$MODULE" > /dev/null
    echo "Installing $MODULE..."
    command ./install.sh
    popd > /dev/null
done
