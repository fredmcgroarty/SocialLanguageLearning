# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 1.upto(10) do |i|
#    user = User.create(:email => "test#{i}@test.com", :password => "test_user#{i}", :password_confirmation => "test_user#{i}")
#    user.user_profile.update(:first_name => "test#{i}", :last_name => "test_last#{i}")
#    user.user_profile.save
# end

User.delete_all
user = User.create!(email: "fred@a.com", password: "12345678", sign_in_count: 0)
user.user_profile.update({user_id: "1", first_name: "Fred", last_name: "Bentos", dob: DateTime.strptime("09/14/1985", "%m/%d/%Y"), gender: 1, picture_file_name: '/spec/images/profile.jpg', native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user.user_profile.save
user2 = User.create(email: "mark@a.com", password: "12345678", sign_in_count: 0)
user2.user_profile.update({user_id: "2", first_name: "Mark", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), gender: 1, picture_file_name: '/spec/images/profile.jpg', native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user2.user_profile.save
user3 = User.create(email: "tiff@a.com", password: "12345678", sign_in_count: 0)
user3.user_profile.update({user_id: "3", first_name: "Tiff", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture_file_name: '/spec/images/profile.jpg', native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user3.user_profile.save
user4 = User.create(email: "ruslan@a.com", password: "12345678", sign_in_count: 0)
user4.user_profile.update({user_id: "4", first_name: "Ruslan", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture_file_name: '/spec/images/profile.jpg', native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user4.user_profile.save

Language.create(name: "English")
Language.create(name: "French")
Language.create(name: "Spanish")

Topic.create(name: "Weather", english: true, french: true, spanish: true)
Topic.create(name: "Business", english: true, french: true, spanish: true)
Topic.create(name: "Sports", english: true, french: true, spanish: true)
Topic.create(name: "Games", english: true, french: true, spanish: true)
Topic.create(name: "Showbiz", english: true, french: true, spanish: true)
Topic.create(name: "Music", english: true, french: true, spanish: true)
Topic.create(name: "Computers", english: true, french: true, spanish: true)
Topic.create(name: "Food", english: true, french: true, spanish: true)
Topic.create(name: "Hobbies", english: true, french: true, spanish: true)
Topic.create(name: "Holidays", english: true, french: true, spanish: true)
