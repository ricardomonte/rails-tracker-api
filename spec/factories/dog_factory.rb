FactoryBot.define do
  factory :dog do
    name { 'Sample Dog' }
    breed { 'Sample Breed' }
    owner { 1 }
  end
end
