# サービス名

漫画の処方箋



## サービス概要

このサービスは、ユーザーの疲れタイプに合わせて漫画のタイトルをおすすめするサービスです。

ユーザーは簡単な質問に答え、それに基づいておすすめの漫画を受け取り、癒しやリフレッシュを提供します。



## このサービスへの思い・作りたい理由

私は幼少期から漫画に夢中になり、その魅力や力を改めて感じた経験から、多くの人に漫画を通じて新しい世界を楽しんでもらいたいと考えています。
自分に合った漫画に出会うことで人生観や行動が変わります。私はスポーツ漫画に出会い背中を押され新しいことに挑戦することができました。また、人間関係で悩んでいた時は人の温かさを描いた漫画に出会い、人との関わりを見直し改善することができました。漫画は私の人生であり、漫画の力を信じています。この情熱を形にしたいと思いました。
同じように悩んでいたり、行動に移せない人が変われる漫画を勧めたいと強く思っています。

漫画はストレスの発散やリラックスに役立つ素晴らしい娯楽ですが、どの漫画を選ぶかは難しいことがあります。
このサービスを作成した背後にある思いは、ユーザーが日常の疲れを癒すために、より適切な漫画を簡単に見つける手助けをすることです。



## ユーザー層

- 10代後半から30代の若者で、漫画に初めて触れる方や、ジャンルが広すぎて何を読んでいいか迷っている方

- 日常生活や仕事でストレスを感じているが、どの漫画がリラックスや癒しにつながるか分からない方



## サービスの利用イメージ

1. ユーザーがサービスにアクセスし、簡単な質問に答えます。

2. サービスは診断結果に基づいておすすめの漫画タイトルを提供します。

3. ユーザーはおすすめ漫画を閲覧し、結果をSNSシェアすることができます。



## ユーザーの獲得について

- 友人、家族に使用してもらいます。

- Xやmattermostに宣伝します。



## サービスの差別化ポイント・推しポイント

- 診断結果の際に、漫画＋アロマを勧めたいと思います。

- 診断プロセスも説得力が感じにくかったため、よりユーザーに合った漫画を提案できるように、高品質な質問を作成することを目指しています。

- 他のサービスでは得られないユーザーエクスペリエンスをお届けします。たとえば、漫画のセレクションが他のサービスよりもパーソナライズされ、ユーザーが疲れている時に最適な作品が提案されるのが、当サービスの特徴です。


## 機能候補

**MVPリリース時に作成したいもの:**

- ユーザー診断プロセス

- おすすめ漫画タイトルの表示

- ユーザー登録

- ログイン,ログアウト機能


**本リリースまでに作成したいもの:**

- ユーザープロフィール

- プロフィール編集

- SNSシェア機能：診断結果をSNSシェアできる機能。

- ランキング機能: ユーザーが最も喜んだ漫画を集計し、ランキングを表示する機能。

- レビュー: ユーザーが漫画にレビューを追加できる機能。

- 画像添付：レビューと一緒に画像を添付できる機能....必要？

- カスタム漫画リスト: ユーザーが自分のお気に入り漫画をまとめてリスト化できる機能。

- 考察ページ：ユーザー同士で漫画について考察を話し合えるページ。

- 検索機能：考察ページからマンガタイトルや巻で気になる漫画の考察レビューを絞り込めます。

- 通知：お気に入りした漫画に対してレビューが更新された際にユーザーに通知します。

## 機能の実装方針予定
- サーバーサイドはRuby on Railsを使用し、フロントエンドはJavaScriptを活用します。
- SNSシェア機能：XやinstagramのAPIを利用します。
- 通知：お気に入りの漫画に新しいレビューが投稿された場合に、LINE Messaging API SDK for Rubyを使用してユーザーにリアルタイムで通知が届く仕組みです。
- 検索機能：Stimulus Autocomplete（Rails7 ）