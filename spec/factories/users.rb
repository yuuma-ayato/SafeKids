FactoryBot.define do
  factory :user do
    email { 'sample@example.com' }
    password { '00000000' }
    admin { false }
  end
  factory :admin_user, class: User do
    email { 'admin@example.com' }
    password { '00000000' }
    admin { true }
  end
end
