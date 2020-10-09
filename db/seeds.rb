# frozen_string_literal: true

User.create!(
  email: 'aaa@example.jp',
  password: '123456',
  password_confirmation: '123456',
  user_type: 1,
  admin: true
)

10.times do |n|
  User.create!(
    email: "bbb#{n + 1}@example.com",
    password: '123456',
    password_confirmation: '123456',
    user_type: 0,
    admin: false
  )
end

5.times do |n|
  User.create!(
    email: "ccc#{n + 1}@example.com",
    password: '123456',
    password_confirmation: '123456',
    user_type: 1,
    admin: false
  )
end

5.times do |n|
  User.create!(
    email: "ddd#{n + 1}@example.com",
    password: '123456',
    password_confirmation: '123456',
    user_type: 2,
    admin: false
  )
end

i = 1
10.times do |n|
  gimei_father = Gimei.male
  home_zip_code = "341000#{rand(1..9)}"
  home_adress = "中央1-#{n + 1}"
  home_building = "ライオンズビル10#{n + 1}"

  Contact.create!(
    relation: '父親',
    phone_number: "048957111#{rand(1..9)}",
    postal_code: home_zip_code,
    prefecture: '埼玉県',
    city: '三郷市',
    adress: home_adress,
    building: home_building,
    image: open('./db/fixtures/boy.png'),
    user_id: (i + n + 1).to_s,
    names_attributes: [
      family_name: gimei_father.last.kanji,
      first_name: gimei_father.first.kanji,
      family_name_kana: gimei_father.last.hiragana,
      first_name_kana: gimei_father.first.hiragana
    ]
  )

  gimei = Gimei.female
  Contact.create!(
    relation: '母親',
    phone_number: "0901234567#{rand(1..9)}",
    postal_code: home_zip_code,
    prefecture: '埼玉県',
    city: '三郷市',
    adress: home_adress,
    building: home_building,
    image: open('./db/fixtures/girl.png'),
    user_id: (i + n + 1).to_s,
    names_attributes: [
      family_name: gimei_father.last.kanji,
      first_name: gimei.first.kanji,
      family_name_kana: gimei_father.last.hiragana,
      first_name_kana: gimei.first.hiragana
    ]
  )

  gimei = Gimei.male
  Child.create!(
    gender: '男',
    birth: Faker::Date.between(from: '2014-04-01', to: '2020-03-31'),
    image: open('./db/fixtures/kid_boy.png'),
    user_id: (i + n + 1).to_s,
    names_attributes: [
      family_name: gimei_father.last.kanji,
      first_name: gimei.first.kanji,
      family_name_kana: gimei_father.last.hiragana,
      first_name_kana: gimei.first.hiragana
    ]
  )

  gimei = Gimei.female
  Child.create!(
    gender: '女',
    birth: Faker::Date.between(from: '2014-04-01', to: '2020-03-31'),
    image: open('./db/fixtures/candy_girl.png'),
    user_id: (i + n + 1).to_s,
    names_attributes: [
      family_name: gimei_father.last.kanji,
      first_name: gimei.first.kanji,
      family_name_kana: gimei_father.last.hiragana,
      first_name_kana: gimei.first.hiragana
    ]
  )
end

5.times do |_n|
  id = rand(2..11)
  name = User.joins(children: :names)
             .where(id: id)
             .select('users.*, names.first_name').first

  Reservation.create!(
    date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
    reason: '仕事',
    status: 0,
    daycare_to_use: 'みさとしらゆり保育園　病児・病後児保育室【つばめ】',
    child_name: name.first_name,
    user_id: id
  )
end

5.times do |_n|
  id = rand(2..11)
  name = User.joins(children: :names)
             .where(id: id)
             .select('users.*, names.first_name').first

  Reservation.create!(
    date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
    reason: '疾病',
    status: 1,
    daycare_to_use: 'みさとしらゆり保育園　病児・病後児保育室【つばめ】',
    child_name: name.first_name,
    user_id: id
  )
end

5.times do |_n|
  id = rand(2..11)
  name = User.joins(children: :names)
             .where(id: id)
             .select('users.*, names.first_name').first

  Reservation.create!(
    date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
    reason: '仕事',
    status: 0,
    daycare_to_use: 'オハナゆめ保育園併設病児保育室',
    child_name: name.first_name,
    user_id: id
  )
end

5.times do |_n|
  id = rand(2..11)
  name = User.joins(children: :names)
             .where(id: id)
             .select('users.*, names.first_name').first

  Reservation.create!(
    date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
    reason: '疾病',
    status: 1,
    daycare_to_use: 'けやきの森保育園西初石園',
    child_name: name.first_name,
    user_id: id
  )
end

Daycare.create!(
  name: 'みさとしらゆり保育園　病児・病後児保育室【つばめ】',
  phone_number: '0489490072',
  postal_code: '3410038',
  prefecture: '埼玉県',
  city: '三郷市',
  adress: '中央１−２−１',
  building: 'ザ・ライオンズ三郷中央２１６',
  capacity: 4
)

Daycare.create!(
  name: 'オハナゆめ保育園併設病児保育室',
  phone_number: '0489113333',
  postal_code: '3410021',
  prefecture: '埼玉県',
  city: '三郷市',
  adress: '泉１１６−１',
  building: '',
  capacity: 3
)

20.times do |n|
  Daycare.create!(
    name: "みさと病児保育施設#{n + 1}",
    phone_number: '0489223456',
    postal_code: '3410022',
    prefecture: '埼玉県',
    city: '三郷市',
    adress: '三郷',
    building: '',
    capacity: 3
  )
end

# ゲストユーザー用seedデータ
User.create!(
  email: 'guest@example.com',
  password: '123456',
  password_confirmation: '123456',
  user_type: 0,
  admin: false
)

gimei_father = Gimei.male
Contact.create!(
  relation: '父親',
  phone_number: "048957111#{rand(1..9)}",
  postal_code: '3410038',
  prefecture: '埼玉県',
  city: '三郷市',
  adress: '中央5-15',
  building: 'ライオンズビル505',
  image: open('./db/fixtures/boy.png'),
  user_id: '22',
  names_attributes: [
    family_name: gimei_father.last.kanji,
    first_name: gimei_father.first.kanji,
    family_name_kana: gimei_father.last.hiragana,
    first_name_kana: gimei_father.first.hiragana
  ]
)

gimei = Gimei.female
Contact.create!(
  relation: '母親',
  phone_number: "0901234567#{rand(1..9)}",
  postal_code: '3410038',
  prefecture: '埼玉県',
  city: '三郷市',
  adress: '中央5-15',
  building: 'ライオンズビル505',
  image: open('./db/fixtures/girl.png'),
  user_id: '22',
  names_attributes: [
    family_name: gimei_father.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei_father.last.hiragana,
    first_name_kana: gimei.first.hiragana
  ]
)

gimei = Gimei.male
Child.create!(
  gender: '男',
  birth: Faker::Date.between(from: '2014-04-01', to: '2020-03-31'),
  image: open('./db/fixtures/kid_boy.png'),
  user_id: '22',
  names_attributes: [
    family_name: gimei_father.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei_father.last.hiragana,
    first_name_kana: gimei.first.hiragana
  ]
)

gimei = Gimei.female
Child.create!(
  gender: '女',
  birth: Faker::Date.between(from: '2014-04-01', to: '2020-03-31'),
  image: open('./db/fixtures/candy_girl.png'),
  user_id: '22',
  names_attributes: [
    family_name: gimei_father.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei_father.last.hiragana,
    first_name_kana: gimei.first.hiragana
  ]
)

5.times do |_n|
  id = 22
  name = User.joins(children: :names)
             .where(id: id)
             .select('users.*, names.first_name').first

  Reservation.create!(
    date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
    reason: '疾病',
    status: '仮予約',
    daycare_to_use: 'みさとしらゆり保育園　病児・病後児保育室【つばめ】',
    child_name: name.first_name,
    user_id: id
  )
end
