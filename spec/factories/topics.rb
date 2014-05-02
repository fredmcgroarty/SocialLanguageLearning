# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    name "Sports"
    created_at Time.now
    english true
    french false
    spanish false
  end
end
