# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Goal.destroy_all
Profile.destroy_all

alexa = Profile.create(name:"Alexa", age:25, photo_url:"", quote: "Sometimes I believe in as many as six impossible things before breakfast!", user_id: 1)

jen = Profile.create(name:'Jen', age:28, photo_url: '', quote: 'Do unto others as you would like others to do unto you.', user_id: 2)
barb = Profile.create(name:"Alexa", age:25, photo_url:"", quote: "Sometimes I believe in as many as six impossible things before breakfast!", user_id: 3)

joy = Profile.create(name:'Jen', age:28, photo_url: '', quote: 'Do unto others as you would like others to do unto you.')
cara = Profile.create(name:"Alexa", age:25, photo_url:"", quote: "Sometimes I believe in as many as six impossible things before breakfast!")

rachel = Profile.create(name:'Jen', age:28, photo_url: '', quote: 'Do unto others as you would like others to do unto you.')
