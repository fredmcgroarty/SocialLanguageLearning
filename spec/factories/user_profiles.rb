# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user_id 1
    first_name "MyString"
    last_name "MyString"
    pic_url "MyString"
  end
end
