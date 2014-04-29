# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(10) do |i|
   user = User.create(:email => "test#{i}@test.com", :password => "test_user#{i}", :password_confirmation => "test_user#{i}")
   user.user_profile.update(:first_name => "test#{i}", :last_name => "test_last#{i}")
   user.user_profile.save
end

