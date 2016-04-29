# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Goal.destroy_all
Category.destroy_all


health = Category.create(type: "Health")
fun = Category.create(type: "Fun")
career = Category.create(type: "Career")
financial = Category.create(type: "Financial")
personal = Category.create(type: "Personal")


Goal.create(name:"Alexa", age:25, photo_url:"", title: "Travel to Asia", description: "I want to take a month long vacation travelling throughout Southeast Asia.", deadline: "2017", category: fun)
Goal.create(name:'Jen', age:28, photo_url: '', title: 'Do unto others as you would like others to do unto you.', category: career)
Goal.create(name:"barb", age:25, photo_url:"", title: "Sometimes I believe in as many as six impossible things before breakfast!", category: health)
Goal.create(name:'joy', age:28, photo_url: '', title: 'Do unto others as you would like others to do unto you.', category: personal)
Goal.create(name:"cara", age:25, photo_url:"", title: "Sometimes I believe in as many as six impossible things before breakfast!", category: financial)
Goal.create(name:'rachel', age:28, photo_url: '', title: 'Do unto others as you would like others to do unto you.', category: fun)
