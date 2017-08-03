#!/bin/bash
for i in {0000..0938}; do
    wget taigi.fhl.net/dict/gm.php?fn=A/A$i.png
done

for i in {0001..1094}; do
    wget taigi.fhl.net/dict/gm.php?fn=B/B$i.png
done
