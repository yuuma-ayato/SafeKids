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

i = 1
10.times do |n|
  Contact.create!(
    relation: "父",
    phone_number: "048957111#{rand(1..9)}",
    postal_code: "341000#{rand(1..9)}",
    prefecture: "埼玉県",
    city: "三郷市",
    adress: "中央1-#{n + 1}",
    building: "ライオンズビル10#{n + 1}",
    image: open("./db/fixtures/boy.png"),
    user_id: "#{i + n + 1}")
end

10.times do |n|
  Contact.create!(
    relation: "母",
    phone_number: "048957111#{rand(1..9)}",
    postal_code: "341000#{rand(1..9)}",
    prefecture: "埼玉県",
    city: "三郷市",
    adress: "泉1-#{n + 1}",
    building: "",
    image: open("./db/fixtures/girl.png"),
    user_id: "#{i + n + 1}")
end

10.times do |n|
  Child.create!(
    gender: "男",
    birth: Faker::Date.between(from: '2014-04-01', to: '2020-03-31'),
    image: open("./db/fixtures/kid_boy.png"),
    user_id: "#{i + n + 1}")
end

10.times do |n|
  Child.create!(
    gender: "女",
    birth: Faker::Date.between(from: '2014-04-01', to: '2020-03-31'),
    image: open("./db/fixtures/candy_girl.png"),
    user_id: "#{i + n + 1}")
end

10.times do |n|
  gimei = Gimei.male
  Name.create!(
    family_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei.last.hiragana,
    first_name_kana: gimei.first.hiragana,
    contact_id: "#{n + 1}")
end

10.times do |n|
  gimei = Gimei.female
  Name.create!(
    family_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei.last.hiragana,
    first_name_kana: gimei.first.hiragana,
    contact_id: "#{n + 1}")
end

10.times do |n|
  gimei = Gimei.male
  Name.create!(
    family_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei.last.hiragana,
    first_name_kana: gimei.first.hiragana,
    child_id: "#{n + 1}")
end

10.times do |n|
  gimei = Gimei.female
  Name.create!(
    family_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei.last.hiragana,
    first_name_kana: gimei.first.hiragana,
    child_id: "#{n + 1}")
end

5.times do |n|
Reservation.create!(
  date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
  reason: "仕事",
  status: 0,
  daycare_to_use: "みさとしらゆり保育園　病児・病後児保育室【つばめ】",
  user_id: rand(2..11))
end

5.times do |n|
Reservation.create!(
  date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
  reason: "疾病",
  status: 1,
  daycare_to_use: "みさとしらゆり保育園　病児・病後児保育室【つばめ】",
  user_id: rand(2..11))
end

5.times do |n|
Reservation.create!(
  date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
  reason: "仕事",
  status: 0,
  daycare_to_use: "オハナゆめ保育園併設病児保育室",
  user_id: rand(2..11))
end

5.times do |n|
Reservation.create!(
  date: Faker::Date.between(from: '2020-09-01', to: '2020-12-29'),
  reason: "疾病",
  status: 1,
  daycare_to_use: "けやきの森保育園西初石園",
  user_id: rand(2..11))
end

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
