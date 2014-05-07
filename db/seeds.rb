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
user = User.create!(email: "fred@a.com", password: "12345678", sign_in_count: 0, username: "Freddy")
user.user_profile.update({user_id: "1", first_name: "Fred", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user.user_profile.save
user2 = User.create(email: "mark@a.com", password: "12345678", sign_in_count: 0, username: "Mark")
user2.user_profile.update({user_id: "2", first_name: "Mark", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user2.user_profile.save
user3 = User.create(email: "tiff@a.com", password: "12345678", sign_in_count: 0, username: "Tiff")
user3.user_profile.update({user_id: "3", first_name: "Tiff", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user3.user_profile.save
user4 = User.create(email: "ruslan@a.com", password: "12345678", sign_in_count: 0, username: "Ruslan")
user4.user_profile.update({user_id: "4", first_name: "Ruslan", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user4.user_profile.save
user5 = User.create(email: "andrew@a.com", password: "12345678", sign_in_count: 0, username: "Andy")
user5.user_profile.update({user_id: "5", first_name: "Andrew", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user5.user_profile.save
user6 = User.create(email: "evgeny@a.com", password: "12345678", sign_in_count: 0, username: "Evgeny")
user6.user_profile.update({user_id: "6", first_name: "Evgeny", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user6.user_profile.save
user7 = User.create(email: "mario@a.com", password: "12345678", sign_in_count: 0, username: "Mario")
user7.user_profile.update({user_id: "7", first_name: "Mario", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user7.user_profile.save
user8 = User.create(email: "mikhael@a.com", password: "12345678", sign_in_count: 0, username: "The Machine")
user8.user_profile.update({user_id: "8", first_name: "Mikhael", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user8.user_profile.save
user9 = User.create(email: "chris@a.com", password: "12345678", sign_in_count: 0, username: "Waddley")
user9.user_profile.update({user_id: "9", first_name: "Chris", last_name: "Waddle", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user9.user_profile.save
user0 = User.create(email: "jose@a.com", password: "12345678", sign_in_count: 0, username: "Jose")
user0.user_profile.update({user_id: "10", first_name: "Jose", last_name: "Mourinhio", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user0.user_profile.save

Language.create(name: "English")
Language.create(name: "French")
Language.create(name: "Spanish")

Topic.create(name: "Weather")
Topic.create(name: "Business")
Topic.create(name: "Sports")
Topic.create(name: "Games")
Topic.create(name: "Showbiz")
Topic.create(name: "Music")
Topic.create(name: "Computers")
Topic.create(name: "Food")
Topic.create(name: "Hobbies")
Topic.create(name: "Holidays")
Topic.create(name: "Countries")
Topic.create(name: "Culture")
Topic.create(name: "Films")
Topic.create(name: "Appearance")
Topic.create(name: "Home")
Topic.create(name: "Work")
Topic.create(name: "Travel")
Topic.create(name: "Leisure")
Topic.create(name: "Tiddlywinks")
Topic.create(name: "Mourinhio")

# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 8, start_time: Time.new(2014,05,06,15,00,00), end_time: Time.new(2014,05,06,17,00,00))
# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 3, start_time: Time.new(2014,05,06,19,00,00), end_time: Time.new(2014,05,06,21,00,00))
# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 2, start_time: Time.new(2014,05,04,12,00,00), end_time: Time.new(2014,05,04,14,00,00))
# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 14, start_time: Time.new(2014,05,04,15,00,00), end_time: Time.new(2014,05,04,17,00,00))
# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 6, start_time: Time.new(2014,05,03,15,00,00), end_time: Time.new(2014,05,03,17,00,00))
# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 5, start_time: Time.new(2014,05,02,15,00,00), end_time: Time.new(2014,05,02,17,00,00))
# Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 11, start_time: Time.new(2014,05,01,15,00,00), end_time: Time.new(2014,05,01,17,00,00))
# Booking.create(length: 1, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 3, start_time: Time.new(2014,05,06,13,00,00), end_time: Time.new(2014,05,06,14,00,00))


UserReview.create(for_user_id: 2, by_user_id: 1, score: 4, rev1: "Pretty good", rev2: "Grammar was poor at times", topic_id: 4, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 4, rev1: "He really captured my attention", rev2: "His come to bed eyes were too distracting", topic_id: 2, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Excellent", rev2: "Accent was a bit off", topic_id: 1, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 1, rev1: "Poor", rev2: "He wouldn't stop eating so I couldn't understand him", topic_id: 16, completed: false)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 20, completed: true)
UserReview.create(for_user_id: 4, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 20, completed: true)
UserReview.create(for_user_id: 5, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 4, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 5, completed: true)
UserReview.create(for_user_id: 7, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 8, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 9, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 10, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 1, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 3, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 2, completed: true)
UserReview.create(for_user_id: 3, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 15, completed: true)
UserReview.create(for_user_id: 4, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 5, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 6, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 7, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 8, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 9, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 5, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 1, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 15, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 15, completed: true)
UserReview.create(for_user_id: 3, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 15, completed: true)
