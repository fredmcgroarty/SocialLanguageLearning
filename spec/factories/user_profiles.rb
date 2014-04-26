# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user_id 1
    first_name "Test"
    last_name "Man"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
  end

  factory :user_total_profile do
    user_id 1
    first_name "Test"
    last_name "Man"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang "French"
    second_lang "Spanish" 
  end
end
