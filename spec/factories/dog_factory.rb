FactoryBot.define do
  factory :dog do
    name { 'Sample Dog' }
    breed { 'Sample Breed' }
    owner { 1 }
    kilograms { 12 }
    regular_play_time { 14 }
  end
end
