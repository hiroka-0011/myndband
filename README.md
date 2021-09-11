# 環境構築方法
[settings.md](settings.md)を熟読
- gulp
- class命名
- flocss書き方など

# build方法
## ローカルサーバー起動と自動コンパイル
`gulp`

## ビルド（Scss,img,ejs..etc）
`gulp build`

# メディアクエリ書き方
```sass
.l-header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    <!-- pc style -->
    @include mq {
        height: 66px;
    }
    <!-- sp style -->
    @include mq(medium, max) {
        height: 36px;
    }
    &--reverse {
        color: $color-black;
    }
}
```

# jsファイル
`src/assets/js/`に個別でモジュール毎に作っていく

# 画像
ファイル毎にフォルダ作成  
例）  
about.html  
=>src/assets/images/about/sample.svg  

## 画像パス書き方(ejs)
`/assets/images/*.png`

## 画像パス書き方(scss)
`/assets/images/*.png`


# カラーコード
参照mixinファイル
`src/assets/sass/foundation/_color`

# フォント
参照mixinファイル
`src/assets/sass/foundation/_font`

# その他使用mixin
*参照mixinファイル*
`src/assets/sass/foundation/_mixin`

1. @include bold;
fontの太さ変更  

2. @include reset-height;  
line-heightなし  

3. @include inner-width;  
innerのwidth設定  

4. センタリング
@include centering(xy);  
@include centering(x);  
@include centering(y);  

5. 中央寄せ
@include auto;

6. 空要素
@include box;
