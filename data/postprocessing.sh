#!/usr/bin/env bash

set -xeuo pipefail

sudo apt-get install jq xq htmlq -y

echo "<div>`curl https://forums.redflagdeals.com/hot-deals-f9/trending/ | htmlq .topic_title_link`</div>" | xq | jq -r '.div.a' > ./data/data.json