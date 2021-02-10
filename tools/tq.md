---
Title: tq
Tags: shell scraping
---

[repo](https://github.com/plainas/tq)

Get headlines from hacker news

```sh
curl https://news.ycombinator.com/news | tq -tj ".title a"
```

Get the title of an html document stored in a file

```sh
cat mydocument.html | tq -t title
```

Get all the images from a webpage

```sh
curl -s 'http://example.com/' | tq "img" -a src | wget -i -
```

## Options

- `SELECTOR` A css selector
- `-a ATTRIBUTE, --attr=ATTRIBUTE` Outputs only the contents of the html ATTRIBUTE.
- `-t, --text` Outputs only the inner text of the selected elements.
- `-p, --parent` Select the parent elements instead.
- `-q, --squash` Squash lines.
- `-s, --squash-space` Squash spaces.
- `-j, --json-lines` JSON encode each match.
- `-J, --json` Output as json array of strings.
- `-v, --version` Prints tq version
