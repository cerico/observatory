for i in `netlify sites:list | grep url | awk -F'//' '{print $2}'`
do
  lighthouse https://$i --output=json --output-path=./lighthouses/$i.json
  lighthouse https://$i --output=html --output-path=./lighthouses/$i.html
done

for i in `ssh deploy@207.180.194.212 "bash -s" < ./scripts/cheboksaru.sh 2/dev/null`
do
  lighthouse https://$i --output=json --output-path=./lighthouses/$i.json
done

