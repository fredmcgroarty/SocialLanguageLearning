# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(10) do |i|
   User.create(:email => "test#{i}@test.com", :password => "test_user#{i}", :password_confirmation => "test_user#{i}")
   profile = UserProfile.find({"#{i}"})
   profile.update(:first_name => "test#{i}")
   profile.save
end

