FactoryBot.define do
  factory :user do
    id { 1 }
    email { 'sample@example.com' }
    password { '00000000' }
    admin { false }
  end
  factory :admin_user, class: User do
    id { 2 }
    email { 'admin@example.com' }
    password { '00000000' }
    admin { true }
  end
end
