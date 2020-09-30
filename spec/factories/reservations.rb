FactoryBot.define do
  factory :reservation do
    date { DateTime.new }
    reason { 0 }
    daycare_to_use { 'みさと保育園' }
    status { 0 }
    child_name {'美里'}
    user { User.first }
  end

  factory :second_reservation, class: Reservation do
    date { DateTime.tomorrow }
    reason { 1 }
    daycare_to_use { '吉川保育園' }
    status { 1 }
    child_name {'美里'}
    user { User.first }
  end
end
