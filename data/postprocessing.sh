#!/usr/bin/env bash

set -xeuo pipefail

# TODO: This whole thing could be made a flake app.
curl -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0"  https://forums.redflagdeals.com/hot-deals-f9/trending/ > ./data/data.html
echo "<div>$(cat ./data/data.html | htmlq .topic_title_link)</div>" | xq | jq -r '.div.a' > ./data/data.json