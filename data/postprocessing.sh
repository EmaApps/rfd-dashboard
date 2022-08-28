#!/usr/bin/env bash

set -xeuo pipefail

# TODO: This whole thing could be made a flake app.
echo "<div>$(curl https://forums.redflagdeals.com/hot-deals-f9/trending/ | htmlq .topic_title_link)</div>" | xq | jq -r '.div.a' > ./data/data.json