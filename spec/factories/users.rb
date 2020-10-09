FactoryBot.define do
  factory :user do
    id { 11 }
    email { 'sample@example.com' }
    password { '00000000' }
    admin { false }
  end
  factory :admin_user, class: User do
    id { 12 }
    email { 'admin@example.com' }
    password { '00000000' }
    admin { true }
  end
end
