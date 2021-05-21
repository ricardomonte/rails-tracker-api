FactoryBot.define do
  factory :expense do
    category { 'Category example' }
    detail { 'This is an example of detail' }
    amount { 15 }
    user_id { 2 }
    date_payment { "2021-5-19" }
  end
end
