#!/bin/sh

########################################################################################################################

rm -fr ./dist/ ./tf2_som.egg-info/

########################################################################################################################

./docs.sh

./setup.py sdist

if twine check dist/*
then
    twine upload dist/*
fi

########################################################################################################################

rm -fr ./dist/ ./tf2_som.egg-info/

########################################################################################################################
