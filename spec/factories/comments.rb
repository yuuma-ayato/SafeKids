# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    reservation { nil }
    content { 'MyText' }
  end
end
