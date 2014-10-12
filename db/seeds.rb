# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: "Frank Grimes",
             image_url: "http://img4.wikia.nocookie.net/__cb20110623203527/lossimpson/es/images/c/c8/Frank_Grimes.png")

User.create!(name: "Troy McClure",
             image_url: "http://tvmedia.ign.com/tv/image/article/730/730957/250-troymcclure_1262709570.jpg")

User.create!(name: "Professor Frink",
             image_url: "http://fc04.deviantart.net/fs15/f/2007/007/5/b/Professor_Frink_by_CBSpaceCowboy.jpg")

User.create!(name: "Disco Stu",
             image_url: "http://cdn.leanblog.org/wp-content/uploads/2014/04/disco-stu.gif")
