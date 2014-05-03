# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_review do
    for_user nil
    rev1 "MyText"
    rev2 "MyText"
    score 1
    topic "MyString"
    completed false
  end
end
