FactoryBot.define do
  factory :comment do
    reservation { nil }
    content { "MyText" }
  end
end
