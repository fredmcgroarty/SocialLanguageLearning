# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user_id 1
    first_name "Test"
    last_name "Man"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg') 
  end
end
