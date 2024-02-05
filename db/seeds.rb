# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or find_or_create_by!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.find_or_create_by!(name: "Luke", movie: movies.first)
Question.find_or_create_by!(title: '栄養バランスのとれた食事、心身のリフレッシュ、十分な休養が取れている')
Question.find_or_create_by!(title: '完璧主義だと思う')
Question.find_or_create_by!(title: '自分がどう思われるのか気になって仕方がない')
Question.find_or_create_by!(title: '「こうあるべき」という自分の理想やものさしが明確にある')
Question.find_or_create_by!(title: 'ストレスを感じやすい')
Question.find_or_create_by!(title: '内向的な性格である')
Question.find_or_create_by!(title: '一人の時間が持てない')
Question.find_or_create_by!(title: '以前に比べて集中できなくなった')
Question.find_or_create_by!(title: '「オフ」の時にも仕事や家庭のことを考える')
Question.find_or_create_by!(title: '子供がいる')

FatigueType.find_or_create_by!(name: '人間関係')
FatigueType.find_or_create_by!(name: '不眠')
FatigueType.find_or_create_by!(name: 'イライラ')
FatigueType.find_or_create_by!(name: 'エネルギー不足')
FatigueType.find_or_create_by!(name: 'ホルモンバランスの乱れ')
FatigueType.find_or_create_by!(name: '育児')

UserAnswer.find_or_create_by!(question_id: 1, answer: true, fatigue_type_id: 1, point: 1)
UserAnswer.find_or_create_by!(question_id: 1, answer: true, fatigue_type_id: 2, point: 1)
UserAnswer.find_or_create_by!(question_id: 1, answer: true, fatigue_type_id: 3, point: 1)
UserAnswer.find_or_create_by!(question_id: 1, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 1, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 1, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 1, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 1, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 1, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 1, answer: false, fatigue_type_id: 4, point: 4)
UserAnswer.find_or_create_by!(question_id: 1, answer: false, fatigue_type_id: 5, point: 3)
UserAnswer.find_or_create_by!(question_id: 1, answer: false, fatigue_type_id: 6, point: 2)
UserAnswer.find_or_create_by!(question_id: 2, answer: true, fatigue_type_id: 1, point: 1)
UserAnswer.find_or_create_by!(question_id: 2, answer: true, fatigue_type_id: 2, point: 3)
UserAnswer.find_or_create_by!(question_id: 2, answer: true, fatigue_type_id: 3, point: 2)
UserAnswer.find_or_create_by!(question_id: 2, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: false, fatigue_type_id: 4, point: 1)
UserAnswer.find_or_create_by!(question_id: 2, answer: false, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 2, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: true, fatigue_type_id: 1, point: 5)
UserAnswer.find_or_create_by!(question_id: 3, answer: true, fatigue_type_id: 2, point: 3)
UserAnswer.find_or_create_by!(question_id: 3, answer: true, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: true, fatigue_type_id: 5, point: 2)
UserAnswer.find_or_create_by!(question_id: 3, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: false, fatigue_type_id: 3, point: 1)
UserAnswer.find_or_create_by!(question_id: 3, answer: false, fatigue_type_id: 4, point: 1)
UserAnswer.find_or_create_by!(question_id: 3, answer: false, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 3, answer: false, fatigue_type_id: 6, point: 1)
UserAnswer.find_or_create_by!(question_id: 4, answer: true, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 4, answer: true, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 4, answer: true, fatigue_type_id: 3, point: 4)
UserAnswer.find_or_create_by!(question_id: 4, answer: true, fatigue_type_id: 4, point: 2)
UserAnswer.find_or_create_by!(question_id: 4, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 4, answer: true, fatigue_type_id: 6, point: 1)
UserAnswer.find_or_create_by!(question_id: 4, answer: false, fatigue_type_id: 1, point: 1)
UserAnswer.find_or_create_by!(question_id: 4, answer: false, fatigue_type_id: 2, point: 1)
UserAnswer.find_or_create_by!(question_id: 4, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 4, answer: false, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 4, answer: false, fatigue_type_id: 5, point: 1)
UserAnswer.find_or_create_by!(question_id: 4, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: true, fatigue_type_id: 1, point: 2)
UserAnswer.find_or_create_by!(question_id: 5, answer: true, fatigue_type_id: 2, point: 1)
UserAnswer.find_or_create_by!(question_id: 5, answer: true, fatigue_type_id: 3, point: 3)
UserAnswer.find_or_create_by!(question_id: 5, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: true, fatigue_type_id: 5, point: 3)
UserAnswer.find_or_create_by!(question_id: 5, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: false, fatigue_type_id: 4, point: 1)
UserAnswer.find_or_create_by!(question_id: 5, answer: false, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 5, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: true, fatigue_type_id: 1, point: 3)
UserAnswer.find_or_create_by!(question_id: 6, answer: true, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: true, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: true, fatigue_type_id: 4, point: 2)
UserAnswer.find_or_create_by!(question_id: 6, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: false, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: false, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 6, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: true, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: true, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: true, fatigue_type_id: 3, point: 2)
UserAnswer.find_or_create_by!(question_id: 7, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: true, fatigue_type_id: 6, point: 3)
UserAnswer.find_or_create_by!(question_id: 7, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 7, answer: false, fatigue_type_id: 4, point: 1)
UserAnswer.find_or_create_by!(question_id: 7, answer: false, fatigue_type_id: 5, point: 1)
UserAnswer.find_or_create_by!(question_id: 7, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: true, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: true, fatigue_type_id: 2, point: 1)
UserAnswer.find_or_create_by!(question_id: 8, answer: true, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: true, fatigue_type_id: 4, point: 3)
UserAnswer.find_or_create_by!(question_id: 8, answer: true, fatigue_type_id: 5, point: 2)
UserAnswer.find_or_create_by!(question_id: 8, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: false, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: false, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 8, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: true, fatigue_type_id: 1, point: 2)
UserAnswer.find_or_create_by!(question_id: 9, answer: true, fatigue_type_id: 2, point: 3)
UserAnswer.find_or_create_by!(question_id: 9, answer: true, fatigue_type_id: 3, point: 1)
UserAnswer.find_or_create_by!(question_id: 9, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: true, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 9, answer: false, fatigue_type_id: 4, point: 1)
UserAnswer.find_or_create_by!(question_id: 9, answer: false, fatigue_type_id: 5, point: 1)
UserAnswer.find_or_create_by!(question_id: 9, answer: false, fatigue_type_id: 6, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: true, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: true, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: true, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: true, fatigue_type_id: 4, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: true, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: true, fatigue_type_id: 6, point: 5)
UserAnswer.find_or_create_by!(question_id: 10, answer: false, fatigue_type_id: 1, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: false, fatigue_type_id: 2, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: false, fatigue_type_id: 3, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: false, fatigue_type_id: 4, point: 1)
UserAnswer.find_or_create_by!(question_id: 10, answer: false, fatigue_type_id: 5, point: 0)
UserAnswer.find_or_create_by!(question_id: 10, answer: false, fatigue_type_id: 6, point: 0)

Aroma.find_or_create_by!(fatigue_type_id: 1, name: "柑橘系")
Aroma.find_or_create_by!(fatigue_type_id: 2, name: "ラベンダー")
Aroma.find_or_create_by!(fatigue_type_id: 3, name: "カモミール")
Aroma.find_or_create_by!(fatigue_type_id: 4, name: "ペパーミント")
Aroma.find_or_create_by!(fatigue_type_id: 5, name: "イランイラン")
Aroma.find_or_create_by!(fatigue_type_id: 6, name: "ゼラニウム")

Manga.find_or_create_by!(fatigue_type_id: 1, title: "葬送のフリーレン")
Manga.find_or_create_by!(fatigue_type_id: 1, title: "それでも町は廻っている")
Manga.find_or_create_by!(fatigue_type_id: 1, title: "舞妓さんちのまかないさん")
Manga.find_or_create_by!(fatigue_type_id: 2, title: "ひらやすみ")
Manga.find_or_create_by!(fatigue_type_id: 2, title: "君は放課後のインソムニア")
Manga.find_or_create_by!(fatigue_type_id: 2, title: "舞妓さんちのまかないさん")
Manga.find_or_create_by!(fatigue_type_id: 3, title: "善悪の屑")
Manga.find_or_create_by!(fatigue_type_id: 3, title: "闇金ウシジマくん")
Manga.find_or_create_by!(fatigue_type_id: 3, title: "前科者")
Manga.find_or_create_by!(fatigue_type_id: 4, title: "ハイキュー")
Manga.find_or_create_by!(fatigue_type_id: 4, title: "アイシールド21")
Manga.find_or_create_by!(fatigue_type_id: 4, title: "ブルーピリオド")
Manga.find_or_create_by!(fatigue_type_id: 5, title: "アシガール")
Manga.find_or_create_by!(fatigue_type_id: 5, title: "スキップとローファー")
Manga.find_or_create_by!(fatigue_type_id: 5, title: "その着せ替え人形は恋をする")
Manga.find_or_create_by!(fatigue_type_id: 5, title: "僕の心のヤバいやつ")
Manga.find_or_create_by!(fatigue_type_id: 6, title: "リエゾン-こどものこころ診療所")
Manga.find_or_create_by!(fatigue_type_id: 6, title: "コウノドリ")
Manga.find_or_create_by!(fatigue_type_id: 6, title: "ゴールデンカムイ")
Manga.find_or_create_by!(fatigue_type_id: 6, title: "幸せは食べて寝て待て")
