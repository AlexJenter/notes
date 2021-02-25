# Daily Actions

## Archive

Since daily notes can pile up pretty quickly, and also clutter up the file explorer lets put them into an archive directory, once their created date is more than 7 days ago. The `find` command is very helpful for this, with it's `-exec` flag. The 7 days rule is achieved via `-Btime +7` and the scope of the search is limited with `-mindepth` and `-maxdepth`

```bash
ARC=./daily/archive
find ./daily -type f -mindepth 1 -maxdepth 1 -Btime +7 -exec mv {} "$ARC" \;
```

## Todays Daily Note

Next lets take care of today's daily note. First lets figure out what today's daily note's filename would be, and assign that to a variable

```bash
CURRENT=`date +"%Y-%m-%d-%a"`.mdx
```

After knowing what the latest daily would be called, get the latest so they can be compared to find out if we already have one for today

```bash
LATEST=`ls -1 daily/*.mdx | sort -r | head -1 | xargs basename`
```

If we already have one, just echo the filename to the terminal. If there is no current daily to be found, create the file, add a heading and add all incomplete tasks

```bash
if [[ $LATEST =~ .*"$CURRENT".* ]]; then
  echo "already have current daily: daily/$LATEST"
else
  NEWDAILY=daily/"$CURRENT"
  touch "$NEWDAILY"
  echo \# `date +"%A, %d %m %Y"` > "$NEWDAILY"
  sed '1d;/^- \[x\]/d' daily/"$LATEST" >> "$NEWDAILY"

  /usr/local/bin/code "${NEWDAILY}"
fi
```
