User.create!(
  email: "aaa@example.jp",
  password: "123456",
  password_confirmation: "123456",
  user_type: 0,
  admin: false)

User.create!(
  email: "bbb@example.jp",
  password: "123456",
  password_confirmation: "123456",
  user_type: 1,
  admin: true)

  User.create!(
    email: "ccc@example.jp",
    password: "123456",
    password_confirmation: "123456",
    user_type: 2,
    admin: false)

Daycare.create!(
  name: "みさとしらゆり保育園　病児・病後児保育室【つばめ】",
  phone_number: "0489490072",
  postal_code: "3410038",
  prefecture: "埼玉県",
  city: "三郷市",
  adress: "中央１−２−１",
  building: "ザ・ライオンズ三郷中央２１６",
  capacity: 4)

Contact.create!(
  relation: "父",
  phone_number: "0489991111",
  postal_code: "3410011",
  prefecture: "埼玉県",
  city: "三郷市",
  adress: "中央１ー１",
  building: "ライオンズビル101",
  image: open("./db/fixtures/boy.png"),
  user_id: 1)

Child.create!(
  gender: "男",
  birth: Time.parse("2015/03/03"),
  image: open("./db/fixtures/kid_boy.png"),
  user_id: 1)

Name.create!(
  family_name: "管理",
  first_name: "一郎",
  family_name_kana: "かんり",
  first_name_kana: "いちろう",
  user_id: 2)

  Name.create!(
    family_name: "安心",
    first_name: "太郎",
    family_name_kana: "安心",
    first_name_kana: "たろう",
    contact_id: 1)

  Name.create!(
    family_name: "安心",
    first_name: "洋介",
    family_name_kana: "あんしん",
    first_name_kana: "ようすけ",
    child_id: 1)
