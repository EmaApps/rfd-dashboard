#!/usr/bin/env bash

set -xeuo pipefail

nix profile install nixpkgs#jq 
nix profile install nixpkgs#yq
nix profile install nixpkgs#htmlq

echo "<div>`curl https://forums.redflagdeals.com/hot-deals-f9/trending/ | htmlq .topic_title_link`</div>" | xq | jq -r '.div.a' > ./data/data.json