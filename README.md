# Downloads CDN

A simple POC to use GitHub Pages to serve static downloads.


### Using

1. Fork this repo.
2. Setup file transformations in [transformations.sh](https://github.com/aviaryan/downloads/blob/gh-pages/transformations.sh).
3. Change version history limit in [push.sh](https://github.com/aviaryan/downloads/blob/gh-pages/push.sh).
3. Run `push.sh`.

```sh
./push.sh
```


### Alias

You can setup a global alias in `.bashrc` or `.bash_profile` to run the script from anywhere.

```sh
alias dwnpush="cd ~/github/downloads; bash ./push.sh"
```


### Example links

* Resume - http://aviaryan.in/downloads/resume.pdf#zoom=140
