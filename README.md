# wiki-table

`http://localhost:4567/search?keyword=ふらいんぐうぃっち`  
のようにアクセスすると，wikipediaの該当ページ(例: [ふらいんぐうぃっち - Wikipedia](https://ja.wikipedia.org/wiki/%E3%81%B5%E3%82%89%E3%81%84%E3%82%93%E3%81%90%E3%81%86%E3%81%83%E3%81%A3%E3%81%A1))の右上のテーブルをMarkdown形式にして返してくれます．

結果↓

```
ふらいんぐうぃっち - Wikipedia
https://ja.wikipedia.org/wiki/%E3%81%B5%E3%82%89%E3%81%84%E3%82%93%E3%81%90%E3%81%86%E3%81%83%E3%81%A3%E3%81%A1

|||
|:---:|:---:|
|ジャンル|ファンタジー、日常|
|作者|石塚千尋|
|出版社|講談社|
|掲載誌|別冊少年マガジン|
|レーベル|講談社コミックス|
|発表号|2012年9月号 -|
|巻数|既刊4巻（2016年3月現在）|
|原作|石塚千尋|
|監督|桜美かつし|
|シリーズ構成|赤尾でこ|
|キャラクターデザイン|安野将人|
|音楽|出羽良彰|
|アニメーション制作|J.C.STAFF|
|製作|「ふらいんぐうぃっち」製作委員会|
|放送局|日本テレビほか|
|放送期間|2016年4月 - 　|
||テンプレート - ノート|
|プロジェクト|漫画・アニメ|
|ポータル|漫画・アニメ|
```

歌手とかは別のテーブルに別の`class`がついているみたいで，春奈るなで試したら空で返ってきた．  

私はこれを漫画の情報を取るくらいにしか使わなかったしここは一つ．  
また，半角スペーズが入ってると上手く取得出来ないかも? ここいらはまだ未確認で進行形です．

うーん，下の方にあるテーブルも取ってきちゃうね．  
これはまぁ良いか……

```
未確認で進行形 - Wikipedia
https://ja.wikipedia.org/wiki/%E6%9C%AA%E7%A2%BA%E8%AA%8D%E3%81%A7%E9%80%B2%E8%A1%8C%E5%BD%A2

|||
|:---:|:---:|
|ジャンル|ラブコメ、4コマ|
|作者|荒井チェリー|
|出版社|一迅社|
|その他の出版社|


その他の出版社


学研パブリッシング


学研パブリッシング|
||学研パブリッシング|
|掲載誌|まんが4コマぱれっと
メガミマガジン|
|レーベル|4コマKINGSぱれっとコミックス|
|発表号|2009年6月号 -
（まんが4コマぱれっと）
2014年2月号 - 5月号
（メガミマガジン）|
|巻数|既刊7巻（2016年3月現在）|
|原作|荒井チェリー|
|監督|藤原佳幸|
|シリーズ構成|志茂文彦|
|脚本|志茂文彦|
|キャラクターデザイン|菊池愛|
|音楽|市川淳|
|アニメーション制作|動画工房|
|製作|未確認で進行形製作委員会|
|放送局|#放送局を参照|
|放送期間|2014年1月 - 3月|
|話数|全12話|
||テンプレート - ノート|
|プロジェクト|漫画・アニメ|
|ポータル|漫画・アニメ|
```
