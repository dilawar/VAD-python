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
set -x 
set -e

while true; do
    arecord -f S16_LE -d 10 /tmp/test.wav && \
        python ./detectVoiceInWave.py /tmp/test.wav  sys.stdout
    sleep 1
done

