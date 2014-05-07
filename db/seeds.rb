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
user1 = User.create!(email: "fred@a.com", password: "12345678", sign_in_count: 0, username: "Freddy")
user1.user_profile.update({user_id: "1", first_name: "Fred", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user1.user_profile.save
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
user10 = User.create!(email: "tom@a.com", password: "12345678", sign_in_count: 0, username: "Tommy")
user10.user_profile.update({user_id: "10", first_name: "Tom", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user10.user_profile.save
user11 = User.create(email: "bill@a.com", password: "12345678", sign_in_count: 0, username: "Billy")
user11.user_profile.update({user_id: "11", first_name: "Bill", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user11.user_profile.save
user12 = User.create(email: "norm@a.com", password: "12345678", sign_in_count: 0, username: "Norm")
user12.user_profile.update({user_id: "12", first_name: "Norm", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user12.user_profile.save
user13 = User.create(email: "sarah@a.com", password: "12345678", sign_in_count: 0, username: "Sarah")
user13.user_profile.update({user_id: "13", first_name: "Sarah", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user13.user_profile.save
user14 = User.create(email: "sue@a.com", password: "12345678", sign_in_count: 0, username: "Sue")
user14.user_profile.update({user_id: "14", first_name: "Sue", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user14.user_profile.save
user15 = User.create(email: "emma@a.com", password: "12345678", sign_in_count: 0, username: "Emma")
user15.user_profile.update({user_id: "15", first_name: "Emma", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user15.user_profile.save
user16 = User.create(email: "luigi@a.com", password: "12345678", sign_in_count: 0, username: "Luigi")
user16.user_profile.update({user_id: "16", first_name: "Luigi", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user16.user_profile.save
user17 = User.create(email: "wario@a.com", password: "12345678", sign_in_count: 0, username: "Wario")
user17.user_profile.update({user_id: "17", first_name: "Wario", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user17.user_profile.save
user18 = User.create(email: "alan@a.com", password: "12345678", sign_in_count: 0, username: "Alan")
user18.user_profile.update({user_id: "18", first_name: "Chris", last_name: "Alan", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user18.user_profile.save
user19 = User.create(email: "john@a.com", password: "12345678", sign_in_count: 0, username: "John")
user19.user_profile.update({user_id: "19", first_name: "John", last_name: "Mourinhio", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user19.user_profile.save
user20 = User.create!(email: "ned@a.com", password: "12345678", sign_in_count: 0, username: "Noddy")
user20.user_profile.update({user_id: "20", first_name: "Ned", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user20.user_profile.save
user21 = User.create(email: "frank@a.com", password: "12345678", sign_in_count: 0, username: "Frank")
user21.user_profile.update({user_id: "21", first_name: "Frank", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user21.user_profile.save
user22 = User.create(email: "anna@a.com", password: "12345678", sign_in_count: 0, username: "Anna")
user22.user_profile.update({user_id: "22", first_name: "Anna", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user22.user_profile.save
user23 = User.create(email: "fredrick@a.com", password: "12345678", sign_in_count: 0, username: "Fredrick")
user23.user_profile.update({user_id: "23", first_name: "Fredrick", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user23.user_profile.save
user24 = User.create(email: "cecil@a.com", password: "12345678", sign_in_count: 0, username: "Cecil")
user24.user_profile.update({user_id: "24", first_name: "Cecil", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user24.user_profile.save
user25 = User.create(email: "titus@a.com", password: "12345678", sign_in_count: 0, username: "Titus")
user25.user_profile.update({user_id: "25", first_name: "Titus", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user25.user_profile.save
user26 = User.create(email: "dwayne@a.com", password: "12345678", sign_in_count: 0, username: "Dwayne")
user26.user_profile.update({user_id: "26", first_name: "Dwayne", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user26.user_profile.save
user27 = User.create(email: "steve@a.com", password: "12345678", sign_in_count: 0, username: "Steve")
user27.user_profile.update({user_id: "27", first_name: "Steve", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user27.user_profile.save
user28 = User.create(email: "austin@a.com", password: "12345678", sign_in_count: 0, username: "Austin")
user28.user_profile.update({user_id: "28", first_name: "Autin", last_name: "Waddle", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user28.user_profile.save
user29 = User.create(email: "brett@a.com", password: "12345678", sign_in_count: 0, username: "The Hitman")
user29.user_profile.update({user_id: "29", first_name: "Brett", last_name: "Hart", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user29.user_profile.save
user30 = User.create!(email: "ashley@a.com", password: "12345678", sign_in_count: 0, username: "Ashley")
user30.user_profile.update({user_id: "30", first_name: "Ashely", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user30.user_profile.save
user31 = User.create(email: "gary@a.com", password: "12345678", sign_in_count: 0, username: "Gary")
user31.user_profile.update({user_id: "31", first_name: "Gary", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user31.user_profile.save
user32 = User.create(email: "steph@a.com", password: "12345678", sign_in_count: 0, username: "Steph")
user32.user_profile.update({user_id: "32", first_name: "Steph", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user32.user_profile.save
user33 = User.create(email: "eden@a.com", password: "12345678", sign_in_count: 0, username: "Eden")
user33.user_profile.update({user_id: "33", first_name: "Eden", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user33.user_profile.save
user34 = User.create(email: "oscar@a.com", password: "12345678", sign_in_count: 0, username: "Oscar")
user34.user_profile.update({user_id: "34", first_name: "Oscar", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user34.user_profile.save
user35 = User.create(email: "wayne@a.com", password: "12345678", sign_in_count: 0, username: "Shrek")
user35.user_profile.update({user_id: "35", first_name: "Wayne", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user35.user_profile.save
user36 = User.create(email: "james@a.com", password: "12345678", sign_in_count: 0, username: "James")
user36.user_profile.update({user_id: "36", first_name: "James", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user36.user_profile.save
user37 = User.create(email: "paul@a.com", password: "12345678", sign_in_count: 0, username: "Paul")
user37.user_profile.update({user_id: "37", first_name: "Paul", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user37.user_profile.save
user38 = User.create(email: "simon@a.com", password: "12345678", sign_in_count: 0, username: "Simon")
user38.user_profile.update({user_id: "38", first_name: "Simon", last_name: "Waddle", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user38.user_profile.save
user39 = User.create(email: "johan@a.com", password: "12345678", sign_in_count: 0, username: "Johan")
user39.user_profile.update({user_id: "39", first_name: "Johan", last_name: "Mourinhio", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user39.user_profile.save
user40 = User.create!(email: "ruud@a.com", password: "12345678", sign_in_count: 0, username: "Ruud")
user40.user_profile.update({user_id: "40", first_name: "Ruud", last_name: "Gullit", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user40.user_profile.save
user41 = User.create(email: "adam@a.com", password: "12345678", sign_in_count: 0, username: "Adam")
user41.user_profile.update({user_id: "41", first_name: "Adam", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user41.user_profile.save
user42 = User.create(email: "claire@a.com", password: "12345678", sign_in_count: 0, username: "Claire")
user42.user_profile.update({user_id: "42", first_name: "Claire", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user42.user_profile.save
user43 = User.create(email: "tim@a.com", password: "12345678", sign_in_count: 0, username: "Tim")
user43.user_profile.update({user_id: "43", first_name: "Tim", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user43.user_profile.save
user44 = User.create(email: "tristan@a.com", password: "12345678", sign_in_count: 0, username: "Tristan")
user44.user_profile.update({user_id: "44", first_name: "Tristan", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user44.user_profile.save
user45 = User.create(email: "neo@a.com", password: "12345678", sign_in_count: 0, username: "Neo")
user45.user_profile.update({user_id: "45", first_name: "Mr", last_name: "Anderson", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user45.user_profile.save
user46 = User.create(email: "jeanclaude@a.com", password: "12345678", sign_in_count: 0, username: "VD")
user46.user_profile.update({user_id: "46", first_name: "Jean-Claude", last_name: "Van Damme", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user46.user_profile.save
user47 = User.create(email: "arnold@a.com", password: "12345678", sign_in_count: 0, username: "Arnold")
user47.user_profile.update({user_id: "47", first_name: "Arnold", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, second_lang: "French", second_lang_lvl: 3, location: "London"})
user47.user_profile.save
user48 = User.create(email: "sylvester@a.com", password: "12345678", sign_in_count: 0, username: "The Stallion")
user48.user_profile.update({user_id: "48", first_name: "Sylvester", last_name: "Stallone", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, second_lang: "Spanish", second_lang_lvl: 3, location: "London"})
user48.user_profile.save
user49 = User.create(email: "brendan@a.com", password: "12345678", sign_in_count: 0, username: "Brendan")
user49.user_profile.update({user_id: "49", first_name: "Brendan", last_name: "Rogers", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, second_lang: "English", second_lang_lvl: 3, location: "London"})
user49.user_profile.save

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

Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 8, start_time: Time.new(2014,05,06,15,00,00), end_time: Time.new(2014,05,06,17,00,00))
Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 3, start_time: Time.new(2014,05,06,19,00,00), end_time: Time.new(2014,05,06,21,00,00))
Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 2, start_time: Time.new(2014,05,04,12,00,00), end_time: Time.new(2014,05,04,14,00,00))
Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 14, start_time: Time.new(2014,05,04,15,00,00), end_time: Time.new(2014,05,04,17,00,00))
Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 6, start_time: Time.new(2014,05,03,15,00,00), end_time: Time.new(2014,05,03,17,00,00))
Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 5, start_time: Time.new(2014,05,02,15,00,00), end_time: Time.new(2014,05,02,17,00,00))
Booking.create(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 11, start_time: Time.new(2014,05,01,15,00,00), end_time: Time.new(2014,05,01,17,00,00))
Booking.create(length: 1, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 3, start_time: Time.new(2014,05,06,13,00,00), end_time: Time.new(2014,05,06,14,00,00))


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
