# Nico

[![Build Status by Travis CI](https://travis-ci.org/kubosho/Nico.svg?branch=master)](https://travis-ci.org/kubosho/Nico)
[![devDependency Status](https://david-dm.org/kubosho/Nico/dev-status.svg)](https://david-dm.org/kubosho/Nico#info=devDependencies)
[![The MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![npm](https://img.shields.io/npm/v/bootstrap-nico.svg)](https://www.npmjs.com/package/bootstrap-nico)

"Nico"は"[Honoka](https://github.com/windyakin/Honoka)"を元にした、日本語も美しく表示できる Bootstrap テーマです。

## About "Nico"

通常の[Bootstrap](//getbootstrap.com/)では，日本語表示に適したものではありません。
"Honoka" では Bootstrap をベースに、日本語表示に適したフォントの指定や、ウェイトに関するコードを追記した Bootstrap テーマです。

"Nico" は "Honoka" を元に、ピンク系の配色を適用したテーマです。

## Live Demo

- [//nico.kubosho.com/bootstrap-ja.html](http://nico.kubosho.com/bootstrap-ja.html) (日本語レイアウト)
- [//nico.kubosho.com/bootstrap.html](http://nico.kubosho.com/bootstrap.html) (英語レイアウト)

## Getting Started

### Download

[Releases](https://github.com/kubosho/Nico/releases) ページから最新版をダウンロードしてください。

### npm

Node.js のパッケージ管理システムである、 [npm](https://npmjs.com) で [公開されています](https://www.npmjs.com/package/bootstrap-nico)。 [webpack](https://webpack.js.org/) など、npm を利用した module bundler でご利用ください。

```
npm install --save bootstrap-nico
```

パッケージ名の先頭に **bootstrap-** があることに注意してください。

[Releases](https://github.com/kubosho/Nico/releases/latest)から最新版をダウンロードしてください。

### Bower

[Bower](http://bower.io/) からインストールすることができます。

最新版をインストールするには以下のコマンドを実行してください。

```
bower install --save-dev $(node -e "$(curl -fsSL https://cdn.honokak.osaka/last.js)" kubosho Nico)
```

もし cURL が入っていない環境の場合には、

```
bower install --save-dev Nico#(version)
```

`(version)` には Nico のバージョン番号を指定します(ex. `Nico#4.0.1`)。 Nico の最新バージョン番号は [Releases](https://github.com/kubosho/Nico/releases) ページから確認してください。

## Usage

Nico は単なる Bootstrap のテーマにしか過ぎないため，基本的な使い方は本家 Bootstrap とほとんど変わりません。
Bootstrap のスタイルシートの読み込みを Honoka のスタイルシートに置き換えることで動作します。また JavaScript のコードは変更されていないので、 Bootstrap のものを使っても問題ありません。

そのほか Bootstrap の機能の詳細については [Bootstrap のドキュメント](https://getbootstrap.com/docs/4.1/getting-started/introduction/) を参照してください。

### Package

配布している ZIP ファイルの内容物は以下のとおりです。 `bootstrap.min.css` といったように、ファイル名に `min` がついているファイルは、改行やインデント・スペーシングをなくした(minify された)コードで、ユーザがウェブページを読み込む際の転送量を少なくすることができます。通常はこの `bootstrap.min.*` を使うことをおすすめします。

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

- windyakin ([@MITLicense](https://twitter.com/MITLicense))
  - Honoka の作者
- kubosho ([blog.kubosho.com](//blog.kubosho.com/))
  - Nico の作者
