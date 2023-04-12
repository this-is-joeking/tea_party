FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.variety }
    price { Faker::Number.within(range: 5.99..99.99) }
    active { Faker::Boolean.boolean(true_ratio: 0.8) }
    frequency { Faker::Number.within(range: 0..3) }
    customer_id { Faker::Number.within(range: Customer.minimum(:id)..Customer.maximum(:id)) }
    tea_id { Faker::Number.within(range: Tea.minimum(:id)..Tea.maximum(:id)) }
  end
end
