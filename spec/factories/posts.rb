# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyString"
    price "9.99"
    image_url "MyString"
    depart_from "MyString"
    depart_to "MyString"
    departure_time "2013-09-13 20:03:26"
    user nil
    city nil
  end
end
