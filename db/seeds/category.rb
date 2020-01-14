new_release = Category.create(name:"NEW RELEASE")
new_release_mens = new_release.children.create(name:"メンズ新着商品")
new_release_mens_shoes = new_release_mens.children.create(name:"シューズ")
new_release_mens_wear = new_release_mens.children.create(name:"ウェア")
new_release_mens_accessories = new_release_mens.children.create(name:"アクセサリー")

new_release_womens = new_release.children.create(name:"レディース新着商品")
new_release_womens_shoes = new_release_womens.children.create(name:"シューズ")
new_release_womens_wear = new_release_womens.children.create(name:"ウェア")
new_release_womens_accessories = new_release_womens.children.create(name:"アクセサリー")

new_release_kids = new_release.children.create(name:"キッズ新着商品")
new_release_kids_shoes = new_release_kids.children.create(name:"シューズ")
new_release_kids_wear = new_release_kids.children.create(name:"ウェア")
new_release_kids_accessories = new_release_kids.children.create(name:"アクセサリー")

mens = Category.create(name:"MEN")
mens_shoes = mens.children.create(name:"シューズ")
mens_shoes_nike = mens_shoes.children.create(name:"ナイキ")
mens_shoes_addidas = mens_shoes.children.create(name:"アディダス")
mens_shoes_asics = mens_shoes.children.create(name:"アシックス")
mens_shoes_jordan = mens_shoes.children.create(name:"ジョーダン")
mens_shoes_under_armour = mens_shoes.children.create(name:"アンダーアーマー")

mens_wear = mens.children.create(name:"ウェア")
mens_wear_tops = mens_wear.children.create(name:"トップス")
mens_wear_pants = mens_wear.children.create(name:"パンツ")
mens_wear_parker = mens_wear.children.create(name:"パーカー")
mens_wear_sweat = mens_wear.children.create(name:"スウェット")
mens_wear_jersey = mens_wear.children.create(name:"ジャージ")

mens_supporter = mens.children.create(name:"サポーター")
mens_supporter_arm = mens_supporter.children.create(name:"腕サポーター")
mens_supporter_knee = mens_supporter.children.create(name:"膝サポーター")
mens_supporter_ankle = mens_supporter.children.create(name:"足首サポーター")

womens = Category.create(name:"WOMEN")
womens_shoes = womens.children.create(name:"シューズ")
womens_shoes_nike = womens_shoes.children.create(name:"ナイキ")
womens_shoes_addidas = womens_shoes.children.create(name:"アディダス")
womens_shoes_asics = womens_shoes.children.create(name:"アシックス")
womens_shoes_jordan = womens_shoes.children.create(name:"ジョーダン")
womens_shoes_under_armour = womens_shoes.children.create(name:"アンダーアーマー")

womens_wear = womens.children.create(name:"ウェア")
womens_wear_tops = womens_wear.children.create(name:"トップス")
womens_wear_pants = womens_wear.children.create(name:"パンツ")
womens_wear_parker = womens_wear.children.create(name:"パーカー")
womens_wear_sweat = womens_wear.children.create(name:"スウェット")
womens_wear_jersey = womens_wear.children.create(name:"ジャージ")

womens_supporter = womens.children.create(name:"サポーター")
womens_supporter_arm = womens_supporter.children.create(name:"腕サポーター")
womens_supporter_knee = womens_supporter.children.create(name:"膝サポーター")
womens_supporter_ankle = womens_supporter.children.create(name:"足首サポーター")

kids = Category.create(name:"KIDS")
kids_shoes = kids.children.create(name:"シューズ")
kids_shoes_nike = kids_shoes.children.create(name:"ナイキ")
kids_shoes_addidas = kids_shoes.children.create(name:"アディダス")
kids_shoes_asics = kids_shoes.children.create(name:"アシックス")
kids_shoes_jordan = kids_shoes.children.create(name:"ジョーダン")
kids_shoes_under_armour = kids_shoes.children.create(name:"アンダーアーマー")

kids_wear = kids.children.create(name:"ウェア")
kids_wear_tops = kids_wear.children.create(name:"トップス")
kids_wear_pants = kids_wear.children.create(name:"パンツ")
kids_wear_parker = kids_wear.children.create(name:"パーカー")
kids_wear_sweat = kids_wear.children.create(name:"スウェット")
kids_wear_jersey = kids_wear.children.create(name:"ジャージ")

kids_supporter = kids.children.create(name:"サポーター")
kids_supporter_arm = kids_supporter.children.create(name:"腕サポーター")
kids_supporter_knee = kids_supporter.children.create(name:"膝サポーター")
kids_supporter_ankle = kids_supporter.children.create(name:"足首サポーター")
