#!/bin/bash -
#===============================================================================
#
#          FILE: run.sh
#
#         USAGE: ./run.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dilawar Singh (), dilawars@ncbs.res.in
#  ORGANIZATION: NCBS Bangalore
#       CREATED: Wednesday 14 February 2018 01:46:32  IST
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
set -e

while true; do
    arecord -f S16_LE -d 5 /tmp/test.wav && \
        python ./detectVoiceInWave.py -i /tmp/test.wav 
    sleep 1
done

