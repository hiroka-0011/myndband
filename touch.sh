#!/bin/sh
# ファイル数を決める際は、{0..10}の10を変更
for i in {0..10};
    do cp ./src/template.ejs ./src/$i.ejs;
done
