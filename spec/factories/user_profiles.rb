# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do


  factory :user_profile, class: "UserProfile" do
    first_name "Fred"
    last_name "M"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
  end

  factory :user_total_profile_1, class: "UserProfile" do
    first_name "Mark"
    last_name "M"
    gender 1
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang "French"
    first_lang_lvl 3
   
   
    dob DateTime.strptime("09/14/1985", "%m/%d/%Y")
  end

  factory :user_total_profile_2, class: "UserProfile" do
    first_name "Tiff"
    last_name "C"
    gender 2
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang_lvl 3
    first_lang "French"
    
    dob DateTime.strptime("09/14/1985", "%m/%d/%Y")
  end

  factory :user_total_profile_3, class: "UserProfile" do
    first_name "Ruslan"
    last_name "V"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "English"
    first_lang "French"
    
    dob DateTime.strptime("09/14/1985", "%m/%d/%Y")
  end


  factory :user_without_avatar, class: "UserProfile" do
    first_name "No"
    last_name "Avatar"
    native_lang "English"
    first_lang "French"
    
    dob DateTime.strptime("09/14/1985", "%m/%d/%Y")
  end

  factory :user_total_profile_5, class: "UserProfile" do
    first_name "France"
    last_name "C"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "French"
    first_lang "English"
    first_lang_lvl 3
    
    dob DateTime.strptime("09/14/1985", "%m/%d/%Y")
  end


  factory :user_total_profile_6, class: "UserProfile" do
    first_name "Spanish"
    last_name "C"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "Spanish"
    first_lang "English"
   
  end

  factory :user_total_profile_7, class: "UserProfile" do
    first_name "France_lower"
    last_name "C"
    picture File.new(Rails.root + 'spec/images/owl-in-a-hat.jpg')
    native_lang "French"
    first_lang "English"
    first_lang_lvl 1
    
  end


end
