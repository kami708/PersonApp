FactoryBot.define do
  factory :product do
    name            {"エアフォース"}
    description     {"エアフォースです"}
    price           {Faker::Number.within(range: 300..10000)}
    seller_id       {Faker::Number.within(range: 1..10)}
    buyer_id        {Faker::Number.within(range: 1..10)}
    category_id     {8}
    brand_id        {Faker::Number.within(range: 1..10)}
    user
  end
end