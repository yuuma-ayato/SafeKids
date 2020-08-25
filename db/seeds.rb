User.create!(
  email: "aaa@example.jp",
  password: "123456",
  password_confirmation: "123456",
  user_type: 1,
  admin: true)

10.times do |n|
  User.create!(
    email: "bbb#{n + 1}@example.com",
    password: "123456",
    password_confirmation: "123456",
    user_type: 0,
    admin: false)
end

5.times do |n|
  User.create!(
    email: "ccc#{n + 1}@example.com",
    password: "123456",
    password_confirmation: "123456",
    user_type: 1,
    admin: false)
end

5.times do |n|
  User.create!(
    email: "ddd#{n + 1}@example.com",
    password: "123456",
    password_confirmation: "123456",
    user_type: 2,
    admin: false)
end

  10.times do |n|
    Contact.create!(
      relation: "父",
      phone_number: "048957111#{n + 1}",
      postal_code: "341000#{n + 1}"",
      prefecture: "埼玉県",
      city: "三郷市",
      adress: "中央",
      building: "ライオンズビル101",
      image: open("./db/fixtures/boy.png"),
      user_id: 1)
  end

Contact.create!(
  relation: "母",
  phone_number: "0489881111",
  postal_code: "3411111",
  prefecture: "埼玉県",
  city: "三郷市",
  adress: "泉１１１",
  building: "",
  image: open("./db/fixtures/girl.png"),
  user_id: 4)

Contact.create!(
  relation: "父",
  phone_number: "0489992222",
  postal_code: "3412211",
  prefecture: "埼玉県",
  city: "三郷市",
  adress: "ららシティ１１ー１",
  building: "",
  image: open("./db/fixtures/usuge.png"),
  user_id: 5)

Child.create!(
  gender: "男",
  birth: Time.parse("2015/03/03"),
  image: open("./db/fixtures/kid_boy.png"),
  user_id: 1)

Child.create!(
  gender: "女",
  birth: Time.parse("2013/11/11"),
  image: open("./db/fixtures/candy_girl.png"),
  user_id: 1)

Child.create!(
  gender: "男",
  birth: Time.parse("2014/03/03"),
  image: open("./db/fixtures/kid_boy.png"),
  user_id: 4)

Name.create!(
  family_name: "安心",
  first_name: "一郎",
  family_name_kana: "あんしん",
  first_name_kana: "いちろう",
  contact_id: 1)

Name.create!(
  family_name: "田中",
  first_name: "陽子",
  family_name_kana: "たなか",
  first_name_kana: "陽子",
  contact_id: 2)

Name.create!(
family_name: "安泰",
first_name: "四郎",
family_name_kana: "あんたい",
first_name_kana: "しろう",
contact_id: 3)

Name.create!(
  family_name: "安心",
  first_name: "吾郎",
  family_name_kana: "あんしん",
  first_name_kana: "ごろう",
  child_id: 1)

Name.create!(
  family_name: "安心",
  first_name: "光子",
  family_name_kana: "あんしん",
  first_name_kana: "みつこ",
  child_id: 2)

Name.create!(
  family_name: "田中",
  first_name: "睦朗",
  family_name_kana: "たなか",
  first_name_kana: "むつろう",
  child_id: 3)

Reservation.create!(
  date: Time.parse("2020/9/11"),
  reason: "仕事",
  status: 0,
  daycare_to_use: "みさとしらゆり保育園　病児・病後児保育室【つばめ】",
  user_id: 1)

  Daycare.create!(
    name: "みさとしらゆり保育園　病児・病後児保育室【つばめ】",
    phone_number: "0489490072",
    postal_code: "3410038",
    prefecture: "埼玉県",
    city: "三郷市",
    adress: "中央１−２−１",
    building: "ザ・ライオンズ三郷中央２１６",
    capacity: 4)

  Daycare.create!(
    name: "オハナゆめ保育園併設病児保育室",
    phone_number: "0489113333",
    postal_code: "3410021",
    prefecture: "埼玉県",
    city: "三郷市",
    adress: "泉１１６−１",
    building: "",
    capacity: 3)

  Daycare.create!(
    name: "けやきの森保育園西初石園",
    phone_number: "0489223456",
    postal_code: "3410022",
    prefecture: "埼玉県",
    city: "三郷市",
    adress: "三郷",
    building: "",
    capacity: 3)
