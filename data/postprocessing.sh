
set -xeuo pipefail

sudo apt-get install jq xq htmlq -y

echo "<div>`cat $1 | htmlq .topic_title_link`</div>" | xq | jq -r '.div.a'