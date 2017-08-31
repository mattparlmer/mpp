#!/bin/bash

# tests shout deployment at https://eng.ohlogen.com/scripts/shout.sh

# disabled for now
## source /dev/stdin <<< "$(curl -s https://eng.ohlogen.com/scripts/shout.sh)"

source shout.sh

printmsg "This is a test" \
          "Of course it's a test\n"

collect "Your name, sir: ->" name

println "Good morning, ${name}"
