#!/usr/bin/env bash

set -xeuo pipefail

# TODO: This whole thing could be made a flake app.
curl https://forums.redflagdeals.com/hot-deals-f9/trending/ > ./data/data.html
echo "<div>$(cat ./data/data.html | htmlq .topic_title_link)</div>" | xq | jq -r '.div.a' > ./data/data.json