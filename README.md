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

## Installation

1. Copy the file `webquotes.sh` into your `$HOME` directory.
    From the this directory you can use `cp webquotes.sh ~/`.
2. Add the following line into the last line of your `~/.zhprofile`.
    Since I'm using `zsh`, I have `~/.zshprofile`.
    If you are using `bash`, you should have `~/.bash_profile`, `~/.bash_login` or `~/.profile`.
3. You may need to restart your terminal.

