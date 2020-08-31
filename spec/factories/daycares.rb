FactoryBot.define do
  factory :daycare do
    name { "みさと保育園" }
    phone_number { "0481112222" }
    postal_code { "3412222" }
    prefecture { "埼玉県" }
    city { "三郷市" }
    adress { "三郷中央" }
    building { "1-1" }
    capacity { 4 }
  end
end
