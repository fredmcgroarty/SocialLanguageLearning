# FactoryGirl.define do

#   factory :user , class: "User" do
#   	email "test@test.com"
#   	password "12345678"
#   	password_confirmation "12345678" 
#   end
# end


FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test_#{n}@test.com"}
    password "12345678"
    password_confirmation "12345678"
  end
end