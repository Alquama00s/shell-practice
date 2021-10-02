words=`wc -w <<<$1`
lines=`wc -l <<<$1`
chars=`wc -m <<<$1`
printf "lines: $lines\nwords: $words\ncharacters: $chars"