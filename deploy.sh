#!/bin/bash
set -e
pushd src > /dev/null
make > /dev/null 2>&1
if [[ "$?" != "0" ]]; then
    echo "Document compilation failed."
else
    echo "Document compilation successful."
fi
popd > /dev/null
mv pdf/thesis.pdf pdf/thesis-dfintha-performance-analysis.pdf
