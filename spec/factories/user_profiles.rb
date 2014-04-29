# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do


  factory :user_profile, class: "UserProfile" do
    user_id 1
    first_name "Fred"
    last_name "M"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
  end

  factory :user_total_profile_1, class: "UserProfile" do
    user_id 2
    first_name "Mark"
    last_name "M"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang "French"
    second_lang "Spanish"
  end

  factory :user_total_profile_2, class: "UserProfile" do
    user_id 3
    first_name "Tiff"
    last_name "C"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang "French"
    second_lang "Spanish"
  end

  factory :user_total_profile_3, class: "UserProfile" do
    user_id 4
    first_name "Ruslan"
    last_name "V"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang "French"
    second_lang "Spanish"
  end


  factory :user_without_avatar, class: "UserProfile" do
    user_id 4
    first_name "No"
    last_name "Avatar"
    native_lang "English"
    first_lang "French"
    second_lang "Spanish"
  end
end
