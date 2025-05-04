# Random Quotes from The Way

Uses the [Escriva.org API](https://escriva.org/api/v1/) available online.

One way to get a random quote converted to a JSON string is as follows.
```
curl -s -X GET "https://escriva.org/api/v1/points/random/?book_type=camino&book_type=surco&book_type=forja&site_id=1" \
 -H 'accept: application/json' 
```

I created a file
`webquotes.sh`
to be placed in `$HOME` directory and be pulled by your RC file (in my case I'm using `.zshrc`).
It is then read via a line in the `.zhrc` as follows
```
source ~/webquotes.sh
```

Requires internet connection to [escriva.org](https://escriva.org/en/) to work.
