# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :post do
    title { Faker::Name.title }
    body { Faker::Lorem.characters(char_count = 255) }
    price { Faker::Number.number(2) }
    image_url "MyString"
    depart_from { Faker::Address.city }
    depart_to  { Faker::Address.city }
    departure_time "2013-09-13 20:03:26"
    user nil
    city nil
  end
end
