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
UserProfile.delete_all
Topic.delete_all
Language.delete_all
UserReview.delete_all

user = User.create!(email: "fred@a.com", password: "12345678", sign_in_count: 0, username: "Freddy")
user.user_profile.update({first_name: "Fred", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user.user_profile.save
user2 = User.create(email: "mark@a.com", password: "12345678", sign_in_count: 0, username: "Mark")
user2.user_profile.update({first_name: "Mark", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user2.user_profile.save
user3 = User.create(email: "tiff@a.com", password: "12345678", sign_in_count: 0, username: "Tiff")
user3.user_profile.update({first_name: "Tiff", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user3.user_profile.save
user4 = User.create(email: "ruslan@a.com", password: "12345678", sign_in_count: 0, username: "Ruslan")
user4.user_profile.update({first_name: "Ruslan", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user4.user_profile.save
user5 = User.create(email: "andrew@a.com", password: "12345678", sign_in_count: 0, username: "Andy")
user5.user_profile.update({first_name: "Andrew", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user5.user_profile.save
user6 = User.create(email: "evgeny@a.com", password: "12345678", sign_in_count: 0, username: "Evgeny")
user6.user_profile.update({first_name: "Evgeny", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user6.user_profile.save
user7 = User.create(email: "mario@a.com", password: "12345678", sign_in_count: 0, username: "Mario")
user7.user_profile.update({first_name: "Mario", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user7.user_profile.save
user8 = User.create(email: "mikhael@a.com", password: "12345678", sign_in_count: 0, username: "The Machine")
user8.user_profile.update({first_name: "Mikhael", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user8.user_profile.save
user9 = User.create(email: "chris@a.com", password: "12345678", sign_in_count: 0, username: "Waddley")
user9.user_profile.update({first_name: "Chris", last_name: "Waddle", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user9.user_profile.save
user0 = User.create(email: "jose@a.com", password: "12345678", sign_in_count: 0, username: "Jose")
user0.user_profile.update({first_name: "Jose", last_name: "Mourinhio", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London", bio: "Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus.Lorum Ipsum I predendum writus Romanus."})
user0.user_profile.save
# user10 = User.create!(email: "tom@a.com", password: "12345678", sign_in_count: 0, username: "Tommy")
# user10.user_profile.update({first_name: "Tom", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user10.user_profile.save
# user11 = User.create(email: "bill@a.com", password: "12345678", sign_in_count: 0, username: "Billy")
# user11.user_profile.update({first_name: "Bill", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user11.user_profile.save
# user12 = User.create(email: "norm@a.com", password: "12345678", sign_in_count: 0, username: "Norm")
# user12.user_profile.update({first_name: "Norm", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user12.user_profile.save
# user13 = User.create(email: "sarah@a.com", password: "12345678", sign_in_count: 0, username: "Sarah")
# user13.user_profile.update({first_name: "Sarah", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user13.user_profile.save
# user14 = User.create(email: "sue@a.com", password: "12345678", sign_in_count: 0, username: "Sue")
# user14.user_profile.update({first_name: "Sue", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user14.user_profile.save
# user15 = User.create(email: "emma@a.com", password: "12345678", sign_in_count: 0, username: "Emma")
# user15.user_profile.update({first_name: "Emma", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user15.user_profile.save
# user16 = User.create(email: "luigi@a.com", password: "12345678", sign_in_count: 0, username: "Luigi")
# user16.user_profile.update({first_name: "Luigi", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user16.user_profile.save
# user17 = User.create(email: "wario@a.com", password: "12345678", sign_in_count: 0, username: "Wario")
# user17.user_profile.update({first_name: "Wario", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user17.user_profile.save
# user18 = User.create(email: "alan@a.com", password: "12345678", sign_in_count: 0, username: "Alan")
# user18.user_profile.update({first_name: "Chris", last_name: "Alan", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user18.user_profile.save
# user19 = User.create(email: "john@a.com", password: "12345678", sign_in_count: 0, username: "John")
# user19.user_profile.update({first_name: "John", last_name: "Mourinhio", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user19.user_profile.save
# user20 = User.create!(email: "ned@a.com", password: "12345678", sign_in_count: 0, username: "Noddy")
# user20.user_profile.update({first_name: "Ned", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user20.user_profile.save
# user21 = User.create(email: "frank@a.com", password: "12345678", sign_in_count: 0, username: "Frank")
# user21.user_profile.update({first_name: "Frank", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user21.user_profile.save
# user22 = User.create(email: "anna@a.com", password: "12345678", sign_in_count: 0, username: "Anna")
# user22.user_profile.update({first_name: "Anna", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user22.user_profile.save
# user23 = User.create(email: "fredrick@a.com", password: "12345678", sign_in_count: 0, username: "Fredrick")
# user23.user_profile.update({first_name: "Fredrick", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user23.user_profile.save
# user24 = User.create(email: "cecil@a.com", password: "12345678", sign_in_count: 0, username: "Cecil")
# user24.user_profile.update({first_name: "Cecil", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user24.user_profile.save
# user25 = User.create(email: "titus@a.com", password: "12345678", sign_in_count: 0, username: "Titus")
# user25.user_profile.update({first_name: "Titus", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user25.user_profile.save
# user26 = User.create(email: "dwayne@a.com", password: "12345678", sign_in_count: 0, username: "Dwayne")
# user26.user_profile.update({first_name: "Dwayne", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user26.user_profile.save
# user27 = User.create(email: "steve@a.com", password: "12345678", sign_in_count: 0, username: "Steve")
# user27.user_profile.update({first_name: "Steve", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user27.user_profile.save
# user28 = User.create(email: "austin@a.com", password: "12345678", sign_in_count: 0, username: "Austin")
# user28.user_profile.update({first_name: "Autin", last_name: "Waddle", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user28.user_profile.save
# user29 = User.create(email: "brett@a.com", password: "12345678", sign_in_count: 0, username: "The Hitman")
# user29.user_profile.update({first_name: "Brett", last_name: "Hart", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user29.user_profile.save
# user30 = User.create!(email: "ashley@a.com", password: "12345678", sign_in_count: 0, username: "Ashley")
# user30.user_profile.update({first_name: "Ashely", last_name: "Bentos", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user30.user_profile.save
# user31 = User.create(email: "gary@a.com", password: "12345678", sign_in_count: 0, username: "Gary")
# user31.user_profile.update({first_name: "Gary", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user31.user_profile.save
# user32 = User.create(email: "steph@a.com", password: "12345678", sign_in_count: 0, username: "Steph")
# user32.user_profile.update({first_name: "Steph", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user32.user_profile.save
# user33 = User.create(email: "eden@a.com", password: "12345678", sign_in_count: 0, username: "Eden")
# user33.user_profile.update({first_name: "Eden", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user33.user_profile.save
# user34 = User.create(email: "oscar@a.com", password: "12345678", sign_in_count: 0, username: "Oscar")
# user34.user_profile.update({first_name: "Oscar", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user34.user_profile.save
# user35 = User.create(email: "wayne@a.com", password: "12345678", sign_in_count: 0, username: "Shrek")
# user35.user_profile.update({first_name: "Wayne", last_name: "V", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user35.user_profile.save
# user36 = User.create(email: "james@a.com", password: "12345678", sign_in_count: 0, username: "James")
# user36.user_profile.update({first_name: "James", last_name: "P", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user36.user_profile.save
# user37 = User.create(email: "paul@a.com", password: "12345678", sign_in_count: 0, username: "Paul")
# user37.user_profile.update({first_name: "Paul", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user37.user_profile.save
# user38 = User.create(email: "simon@a.com", password: "12345678", sign_in_count: 0, username: "Simon")
# user38.user_profile.update({first_name: "Simon", last_name: "Waddle", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user38.user_profile.save
# user39 = User.create(email: "johan@a.com", password: "12345678", sign_in_count: 0, username: "Johan")
# user39.user_profile.update({first_name: "Johan", last_name: "Mourinhio", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user39.user_profile.save
# user40 = User.create!(email: "ruud@a.com", password: "12345678", sign_in_count: 0, username: "Ruud")
# user40.user_profile.update({first_name: "Ruud", last_name: "Gullit", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user40.user_profile.save
# user41 = User.create(email: "adam@a.com", password: "12345678", sign_in_count: 0, username: "Adam")
# user41.user_profile.update({first_name: "Adam", last_name: "Mekhaiel", dob: DateTime.strptime("09/14/1984", "%m/%d/%Y"), picture: File.open(Rails.root.join('spec/images/owl-in-a-hat.jpg')), gender: 1, native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user41.user_profile.save
# user42 = User.create(email: "claire@a.com", password: "12345678", sign_in_count: 0, username: "Claire")
# user42.user_profile.update({first_name: "Claire", last_name: "C", dob: DateTime.strptime("09/14/1987", "%m/%d/%Y"), gender: 2, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user42.user_profile.save
# user43 = User.create(email: "tim@a.com", password: "12345678", sign_in_count: 0, username: "Tim")
# user43.user_profile.update({first_name: "Tim", last_name: "R", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user43.user_profile.save
# user44 = User.create(email: "tristan@a.com", password: "12345678", sign_in_count: 0, username: "Tristan")
# user44.user_profile.update({first_name: "Tristan", last_name: "C", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user44.user_profile.save
# user45 = User.create(email: "neo@a.com", password: "12345678", sign_in_count: 0, username: "Neo")
# user45.user_profile.update({first_name: "Mr", last_name: "Anderson", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user45.user_profile.save
# user46 = User.create(email: "jeanclaude@a.com", password: "12345678", sign_in_count: 0, username: "VD")
# user46.user_profile.update({first_name: "Jean-Claude", last_name: "Van Damme", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user46.user_profile.save
# user47 = User.create(email: "arnold@a.com", password: "12345678", sign_in_count: 0, username: "Arnold")
# user47.user_profile.update({first_name: "Arnold", last_name: "Duboff", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "Spanish", first_lang: "English", first_lang_lvl: 3, location: "London"})
# user47.user_profile.save
# user48 = User.create(email: "sylvester@a.com", password: "12345678", sign_in_count: 0, username: "The Stallion")
# user48.user_profile.update({first_name: "Sylvester", last_name: "Stallone", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "English", first_lang: "French", first_lang_lvl: 3, location: "London"})
# user48.user_profile.save
# user49 = User.create(email: "brendan@a.com", password: "12345678", sign_in_count: 0, username: "Brendan")
# user49.user_profile.update({first_name: "Brendan", last_name: "Rogers", dob: DateTime.strptime("09/14/1990", "%m/%d/%Y"), gender: 1, picture: File.open(Rails.root.join('spec/images/profile.jpg')), native_lang: "French", first_lang: "Spanish", first_lang_lvl: 3, location: "London"})
# user49.user_profile.save


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

Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 8, start_time: Time.new(2014,05,06,15,00,00), end_time: Time.new(2014,05,06,17,00,00)).save(validate: false)
Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 3, start_time: Time.new(2014,05,06,19,00,00), end_time: Time.new(2014,05,06,21,00,00)).save(validate: false)
Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 2, start_time: Time.new(2014,05,04,12,00,00), end_time: Time.new(2014,05,04,14,00,00)).save(validate: false)
Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 14, start_time: Time.new(2014,05,04,15,00,00), end_time: Time.new(2014,05,04,17,00,00)).save(validate: false)
Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 6, start_time: Time.new(2014,05,03,15,00,00), end_time: Time.new(2014,05,03,17,00,00)).save(validate: false)
Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 5, start_time: Time.new(2014,05,02,15,00,00), end_time: Time.new(2014,05,02,17,00,00)).save(validate: false)
Booking.new(length: 2, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 11, start_time: Time.new(2014,05,01,15,00,00), end_time: Time.new(2014,05,01,17,00,00)).save(validate: false)
Booking.new(length: 1, user_id: 2, student_id: 1, accepted: true, lang1: "English", lang2: "French", topic_id: 3, start_time: Time.new(2014,05,06,13,00,00), end_time: Time.new(2014,05,06,14,00,00)).save(validate: false)


UserReview.create(for_user_id: 2, by_user_id: 1, score: 4, rev1: "Pretty good", rev2: "Grammar was poor at times", topic_id: 4, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 4, rev1: "He really captured my attention", rev2: "His come to bed eyes were too distracting", topic_id: 2, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Excellent", rev2: "Accent was a bit off", topic_id: 1, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 1, rev1: "Poor", rev2: "He wouldn't stop eating so I couldn't understand him", topic_id: 16, completed: false)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Accent was very good", rev2: "He started very well but had difficulty with some of the more complex questions. I recommend using www.britishcouncil.co.uk for more indepth resources. 
", topic_id: 20, completed: true)
UserReview.create(for_user_id: 4, by_user_id: 1, score: 5, rev1: "Good grasp of the subject", rev2: "You can't improve on perfection", topic_id: 20, completed: true)
UserReview.create(for_user_id: 5, by_user_id: 1, score: 5, rev1: "Excellent vocabulary", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 4, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 5, completed: true)
UserReview.create(for_user_id: 7, by_user_id: 1, score: 5, rev1: "He is great fun. Although I am still confused as to why greengrocers refer to ‘new potatoes’ as being ‘new’. They’ve been around for years! Ahhh the English! Anyway thank you!
", rev2: "Concentrate on your use of the future tense. You did very well today but the future tense is giving you difficulties.", topic_id: 6, completed: true)
UserReview.create(for_user_id: 8, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You needs to work on his past tenses. REMEMBER! +ed for regular, then all those irregular ones that are difficult to learn, LEARN THEM!
", topic_id: 6, completed: true)
UserReview.create(for_user_id: 9, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 10, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 1, by_user_id: 1, score: 5, rev1: "He demonstrated good conversational ability. Boss, I think you should concentrate on your pronunciation in future sessions. 
", rev2: "You can't improve on perfection", topic_id: 3, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "Sessions with Boss are always an enjoyable experience. We discussed a range of topics including French history and early British cinema. I recommend Boss as an ideal language-learning partner. 
", rev2: "Concentrate on your use of the future tense. You did very well today but the future tense is giving you difficulties.", topic_id: 2, completed: true)
UserReview.create(for_user_id: 1, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "Concentrate on your use of the future tense. You did very well today but the future tense is giving you difficulties.
", topic_id: 15, completed: true)
UserReview.create(for_user_id: 4, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "What a pain the arse! all you did was talk about Miley Cyrus! so Boring", topic_id: 6, completed: true)
UserReview.create(for_user_id: 5, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 6, by_user_id: 1, score: 5, rev1: "She kept the conversation flowing and taught me some very useful vocabulary I will definitely use the next time I visit France. We debated recent events in Ukraine and whilst our views differed greatly, we came to the very natural conclusion that it is nothing to do with us as I am from England and she is from France. A good lesson all round. Thanks!
", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 7, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "Does Azpilacueta really deserve his spot above Ashely", topic_id: 6, completed: true)
UserReview.create(for_user_id: 8, by_user_id: 1, score: 5, rev1: "He is very jolly and engaging. She has set me homework – things to concentrate on before my next tandem session – which I really appreciate. I hope to see her again soon on polyglt. 
", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 9, by_user_id: 1, score: 5, rev1: "So our lessons revolved around British Soap operas. What strange people you are, watching all that misery on television twenty-four hours a day! Still, a fascinating insight into British culture and a valuable language lesson. 
", rev2: "You can't improve on perfection", topic_id: 6, completed: true)
UserReview.create(for_user_id: 5, by_user_id: 1, score: 5, rev1: "He is a really helpful conversationalist who has helped me progress massively. I hope she could say the same for me.
", rev2: "Concentrate on your use of the future tense. You did very well today but the future tense is giving you difficulties.", topic_id: 6, completed: true)
UserReview.create(for_user_id: 1, by_user_id: 1, score: 5, rev1: "Top notch", rev2: "What a time waster, he didn’t turn up! That’s the last time ill arrange a lesson with you again!  
", topic_id: 15, completed: true)
UserReview.create(for_user_id: 2, by_user_id: 1, score: 5, rev1: "He showed me that there is more to France than garlic, baguettes and the accordion. I can now string a sentence together that isn’t culturally insensitive or offensive. Thanks!
", rev2: "You can't improve on perfection", topic_id: 15, completed: true)
UserReview.create(for_user_id: 1, by_user_id: 1, score: 5, rev1: "She helped me understand the present perfect, a tense I have had great difficulty understanding. We used the subject of holidays to give context. It worked! Merci J! 
", rev2: "What a time waster, he didn’t turn up! That’s the last time ill arrange a lesson with you again!  ", topic_id: 15, completed: true)

Question.create(text: "What's your favourite season?", topic_id: 1)
Question.create(text: "Why do you prefer it?", topic_id: 1)
Question.create(text: "What's the weather like right now where you are?", topic_id: 1)
Question.create(text: "What's your opinion on the latest projections for convection currents in the sub-pacific region?", topic_id: 1)
Question.create(text: "Does the Sun have his hat on?", topic_id: 1)
Question.create(text: "What do you work as?", topic_id: 2)
Question.create(text: "What do you want to be?", topic_id: 2)
Question.create(text: "What did you study at school?", topic_id: 2)
Question.create(text: "Do you enjoy your job?", topic_id: 2)
Question.create(text: "What would you be if you could choose?", topic_id: 2)
Question.create(text: "How good are Chelsea?", topic_id: 3)
Question.create(text: "Does Azpilacueta really deserve his spot above Ashely?", topic_id: 3)
Question.create(text: "Will anyone else win 2 European titles in a row?", topic_id: 3)
Question.create(text: "What is the second football team in London?", topic_id: 3)
Question.create(text: "What's your favourite sport?", topic_id: 3)
Question.create(text: "What's your favourite board game?", topic_id: 4)
Question.create(text: "Do you play sports?", topic_id: 4)
Question.create(text: "Do you prefer indoor or outdoor games?", topic_id: 4)
Question.create(text: "Do you play any consoles?", topic_id: 4)
Question.create(text: "What's your favourite game?", topic_id: 4)
Question.create(text: "What's your favourite film?", topic_id: 5)
Question.create(text: "What's your favourite song?", topic_id: 5)
Question.create(text: "Who is your favourite Actor / Actress?", topic_id: 5)
Question.create(text: "Have you ever watched the Oscars?", topic_id: 5)
Question.create(text: "What's the last film you saw at the cinema?", topic_id: 5)
Question.create(text: "What type of music do you like?", topic_id: 6)
Question.create(text: "What is your favourite band?", topic_id: 6)
Question.create(text: "And your worst?", topic_id: 6)
Question.create(text: "Have you ever played an instrumnet?", topic_id: 6)
Question.create(text: "Have you been to any festivals?", topic_id: 6)
Question.create(text: "Do you have a P.C at home?", topic_id: 7)
Question.create(text: "What do you do on it?", topic_id: 7)
Question.create(text: "Do you prefer a laptop or PC?", topic_id: 7)
Question.create(text: "Do you have the internet at home?", topic_id: 7)
Question.create(text: "If not what magic are you using to be on this site?", topic_id: 7)
Question.create(text: "What's your favourite food?", topic_id: 8)
Question.create(text: "Do you like to cook?", topic_id: 8)
Question.create(text: "What did you eat growing up?", topic_id: 8)
Question.create(text: "What's your favourite takeaway?", topic_id: 8)
Question.create(text: "How do you like your steak?", topic_id: 8)
Question.create(text: "What do you do in your spare time?", topic_id: 9)
Question.create(text: "Do you play any sports?", topic_id: 9)
Question.create(text: "Do you collect little figurines and paint them", topic_id: 9)
Question.create(text: "Have you ever sat on the pavement and planned your course of action should a meteor land?", topic_id: 9)
Question.create(text: "If not, why not?", topic_id: 9)
Question.create(text: "Where was your last holiday?", topic_id: 10)
Question.create(text: "What would your dream holiday be?", topic_id: 10)
Question.create(text: "What was your worst holiday?", topic_id: 10)
Question.create(text: "Have you ever been skiing?", topic_id: 10)
Question.create(text: "Do you like the beach?", topic_id: 10)
Question.create(text: "What is your favourite country to visit?", topic_id: 11)
Question.create(text: "Which country annoys you?", topic_id: 11)
Question.create(text: "What is your favourite city?", topic_id: 11)
Question.create(text: "Do you prefer the country or the city?", topic_id: 11)
Question.create(text: "Describe the city you live in", topic_id: 11)
Question.create(text: "Have you ever been to the theatre?", topic_id: 12)
Question.create(text: "Do you like going to sporting events?", topic_id: 12)
Question.create(text: "Where do you go on a night out?", topic_id: 12)
Question.create(text: "Who is your favourite celebrity at the moment?", topic_id: 12)
Question.create(text: "Which of Beethoven's symphonies most struck home?", topic_id: 12)
Question.create(text: "What is your favourite film?", topic_id: 13)
Question.create(text: "Who is your favourite actor?", topic_id: 13)
Question.create(text: "What was the last film you saw at the cinema?", topic_id: 13)
Question.create(text: "Which films do you own at home?", topic_id: 13)
Question.create(text: "Which film is the most under rated?", topic_id: 13)
Question.create(text: "What style clothes do you wear?", topic_id: 14)
Question.create(text: "Whose style do you think looks good?", topic_id: 14)
Question.create(text: "What is the most you've spent on an article of clothing", topic_id: 14)
Question.create(text: "Socks with sandals?", topic_id: 14)
Question.create(text: "What is your favourite item of clothing", topic_id: 14)
Question.create(text: "Do you live in a hour or a flat?", topic_id: 15)
Question.create(text: "How many bedrooms does where you live have?", topic_id: 15)
Question.create(text: "Do you live with family? Friends? Or alone?", topic_id: 15)
Question.create(text: "Where is the best place you have ever lived?", topic_id: 15)
Question.create(text: "Where is your favourite place to live?", topic_id: 15)
Question.create(text: "What do you work as?", topic_id: 16)
Question.create(text: "What did you dream of being?", topic_id: 16)
Question.create(text: "What do you think is the coolest job?", topic_id: 16)
Question.create(text: "What would you be if you had the choice?", topic_id: 16)
Question.create(text: "Where do you work?", topic_id: 16)
Question.create(text: "Do you drive?", topic_id: 17)
Question.create(text: "Have you ever owned a car? If so, what?", topic_id: 17)
Question.create(text: "What is your favourite method of travel?", topic_id: 17)
Question.create(text: "Which continents have you travelled to?", topic_id: 17)
Question.create(text: "What is the furthest from home you've ever travelled?", topic_id: 17)
Question.create(text: "What do you do in your spare time?", topic_id: 18)
Question.create(text: "What is your favourite park that you've been to?", topic_id: 18)
Question.create(text: "Do you play any sports?", topic_id: 18)
Question.create(text: "What events do you attend?", topic_id: 18)
Question.create(text: "What is your favourite hobby?", topic_id: 18)
Question.create(text: "Did you see the 1984 final that went to the fourth tidly?", topic_id: 19)
Question.create(text: "What is your favourite Tiddly Winks venue?", topic_id: 19)
Question.create(text: "What is your favourite Tiddly Winks Widdly Tink?", topic_id: 19)
Question.create(text: "Who is your favourite Tiddly Winks champion?", topic_id: 19)
Question.create(text: "When did you come out as a Tiddly Winks player?", topic_id: 19)
Question.create(text: "Where were you when you first saw Jose's face?", topic_id: 20)
Question.create(text: "What do you do to try and be more like him?", topic_id: 20)
Question.create(text: "How many people would you slay, in order to reach Jose?", topic_id: 20)
Question.create(text: "Why hasn't Jose been elected to public office yet?", topic_id: 20)
Question.create(text: "How many people would you sacrifice to save the one, the Jose?", topic_id: 20)
