cat output/httpx-output.txt | jq -r 'try(.url)' | sort -n | uniq > output/final.txt
