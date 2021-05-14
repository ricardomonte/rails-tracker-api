FactoryBot.define do
  factory :food do
    name { 'Food example' }
    amount { 65 }
    times_per_day { 2 }
    total_kilograms { 15 }
    dog_id { 1 }
  end
end
