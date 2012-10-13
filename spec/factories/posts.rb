# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    user_id 1
    title "MyString"
    url "MyText"
    rating 1
  end
end
