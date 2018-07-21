# Nico

[![Build Status](https://travis-ci.org/kubosho/Nico.svg?branch=master)](https://travis-ci.org/kubosho/Nico)
[![devDependency Status](https://david-dm.org/kubosho/Nico/dev-status.svg)](https://david-dm.org/windyakin/Honoka#info=devDependencies)
[![The MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

"Nico"は"[Honoka](https://github.com/windyakin/Honoka)"を元にした、日本語も美しく表示できるBootstrapテーマです。

## About "Nico"

通常の[Bootstrap](//getbootstrap.com/)では，日本語表示に適したものではありません。
"Honoka" では Bootstrap をベースに、日本語表示に適したフォントの指定や、ウェイトに関するコードを追記した Bootstrap テーマです。

"Nico" は "Honoka" を元に、ピンク系の配色を適用したテーマです。

## Live Demo

* [//nico.kubosho.com/bootstrap-ja.html](http://nico.kubosho.com/bootstrap-ja.html) (日本語レイアウト)
* [//nico.kubosho.com/bootstrap.html](http://nico.kubosho.com/bootstrap.html) (英語レイアウト)

## Download

[Releases](https://github.com/kubosho/Nico/releases/latest)から最新版をダウンロードしてください。

### npm

Node.js のパッケージ管理システムである、 [npm](https://npmjs.com) で [公開されています](https://www.npmjs.com/package/bootstrap-nico)。 [webpack](https://webpack.js.org/) など、npmを利用したmodule bundlerでご利用ください。

```
npm install --save bootstrap-nico
```

パッケージ名が「**bootstrap-**nico」であることに注意してください。

## Usage

Nicoは単なるBootstrapのテーマにしか過ぎないため，基本的な使い方は本家Bootstrapとほとんど変わりません。
Bootstrap のスタイルシートの読み込みを Honoka のスタイルシートに置き換えることで動作します。また JavaScript のコードは変更されていないので、 Bootstrap のものを使っても問題ありません。

そのほか Bootstrap の機能の詳細については [Bootstrap のドキュメント](https://getbootstrap.com/docs/4.1/getting-started/introduction/) を参照してください。

### Package

配布している ZIP ファイルの内容物は以下のとおりです。 `bootstrap.min.css` といったように、ファイル名に `min` がついているファイルは、改行やインデント・スペーシングをなくした(minifyされた)コードで、ユーザがウェブページを読み込む際の転送量を少なくすることができます。通常はこの `bootstrap.min.*` を使うことをおすすめします。

```
nico/
├─ LICENSE
├─ README.md
├─ bootstrap.html
├─ css/
│  ├─ bootstrap.css
│  └─ bootstrap.min.css
└─ js/
    ├─ bootstrap.bundle.js
    ├─ bootstrap.bundle.min.js
    ├─ bootstrap.js
    └─ bootstrap.min.js
```

## Build

ビルドの方法については [Wiki](https://github.com/windyakin/Honoka/wiki) をご覧ください。

## License

[MIT License](LICENSE)

## Author

* windyakin ([@MITLicense](https://twitter.com/MITLicense))
  * Honokaの作者
* kubosho ([blog.kubosho.com](//blog.kubosho.com/))
  * Nicoの作者
