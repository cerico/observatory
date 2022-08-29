# Lighthouse and Observatory scores

Lighthouse Scores: https://lighthouses.netlify.app

Observatory Scores: https://observatory-scores.netlify.app


- Displays Lighthouse and Observatory scores for Netlify Projects
- Displays Lighthouse and Observatory scores for Projects on Cheboksaru VPS

### Pre-requisites

- Ansible
- Netlify

### How to run

```
make lighthouses
make obs
make pages
```

### Troubleshooting

Should work on netlify sites out of the box, but both `scripts/lighthouses.sh` and `scripts/observatories.sh` will need the lines relating to the Cheboksaru VPS removed to work for anyone else (TODO move these into separate scripts). 

If your URLs aren't netlify hosted, then

```
for i in `netlify sites:list
```

can be replaced with 

```
for i in `cat urls.txt
```

where urls.txt is a list of the urls you want to run the reporting against

