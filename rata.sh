#!/bin/sh
trap 'rm -f "$tmp"' EXIT
tmp=$(mktemp) || exit 1

echo "var print = console.log" > $tmp

cat $1 | \
  sed "s/do |\(.*\)|/function (\1) {/g" | \
  sed "s/if \(.*\) do/if (\1) {/g" | \
  sed "s/while \(.*\) do/while (\1) {/g" | \
  sed "s/else/} else {/g" | \
  sed "s/end/}/g" | \
  sed "s/let /var /g" | \
  cat >> $tmp

# cat $tmp
/usr/bin/node $tmp
