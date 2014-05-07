# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question, :class => 'Questions' do
    text "MyString"
    topic nil
  end
end
