# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Goal.destroy_all
Profile.destroy_all

alexa = Profile.create(name:"Alexa", age:25, photo_url:"", quote: "Sometimes I believe in as many as six impossible things before breakfast!" )
