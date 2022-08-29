for i in `netlify sites:list | grep url | awk -F'//' '{print $2}'`
do
  observatory $i --format=report |  grep :| jq -R -n -c '[inputs|split(": ")|{(.[0]):.[1]}] | add'  > ./observatories/$i.json
done

for i in `ssh deploy@207.180.194.212 "bash -s" < ./scripts/cheboksaru.sh 2/dev/null`
do
  observatory $i --format=report |  grep :| jq -R -n -c '[inputs|split(": ")|{(.[0]):.[1]}] | add' > ./observatories/$i.json
done

