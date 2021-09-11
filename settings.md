# 初期設定手順
1. install node_modules  
download node.js from [https://nodejs.org/ja/](https://nodejs.org/ja/)  
`npm i`

2. global install  
`npm install -g gulp-cli`

3. build ejs, scss    
`gulp`

4. edit gulpfile.js
set correct project path
`PATH = './【project name】';
`
5. gulpコマンドを保ちながら、srcに追加した画像をdistに書き出す。
`gulp copy-src`

6. ファイルを複製する場合
- vi touch.sh
- ファイル数を設定（例：{1..10}から{1..20}に変更など）
- ./touch.sh
- src配下に吐き出される

# エラー問題を解消する
edit node_modules/gulp-combine-media-queries/index.js  
`
152 // file.contents = new Buffer(cssJson);
`

# テンプレートとして活用する。
- gulpfile.js
- node_modules
- package.json
- package-lock.json
- _template
    - dist
    - src
- project-web
    - dist
    - src

1. copy template  
`
cp _template 【project name】
`  
2. edit project-web/src/*


# 基本ファイル構造/フレームワーク
- assets/
    - js
    - images/
    - inc/
        - head.ejs
        - header.ejs
        - footer.ejs
        - script.ejs
    - sass/
        - foundation/
            - _base.scss
            - _color.scss
            - _font.scss
            - _keyframe.scss
            - _mixin.scss
            - _reset.scss
            - _variable.scss
        - layout/（ベース）
        - object/
            - projects/（ページ固有CSS）
            - components/（共通CSS）
            - utility/（最終手段）


# 使いたいgulpコマンド
### distのファイルを全て更新したい場合
`
gulp finish clean
`

# Flocss構造（厳密にはもっと原子化する必要性有り）
### Layout
1. 全体のベースのcssを書く際は、assets/sass/layout/*.scssのファイルを作成後、スタイルを書く。
2. assets/sass/layout/*.scssに記述していく。頭文字は、「l」
3. assets/sass/style.scssにimport先を書く。

### Project
1. ページ固有のcssを書く際は、assets/sass/object/project/*.scssのファイルを作成後、スタイルを書く。
2. assets/sass/object/project/_sample.scssに記述していく。頭文字は、「p」
3. assets/sass/style.scssにimport先を書く。


### Component
1. 繰り返し3回以上出現しそうなclassはassets/sass/object/_component.scssに書いていく。
2. assets/sass/object/_component.scssに記述していく。頭文字は、「c」
3. assets/sass/style.scssにimport先を書く。


# Reference
### gulp
- https://ics.media/entry/3290/  

### ejs  
- https://www.nxworld.net/
- https://qiita.com/y_hokkey/items/31f1daa6cecb5f4ea4c9  

### scss
- https://arutega.jp/scss/  

### flocss
- https://qiita.com/sueshin/items/dcbaf3d8a0adb6b087db

### class
- https://qiita.com/manabuyasuda/items/dbb76ed36970bec95470
