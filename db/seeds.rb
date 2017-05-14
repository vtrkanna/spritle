# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user create
require 'bcrypt'
bc = BCrypt::Password.create("123456789")

User.create(name: "kanna", password: bc, email: "ramesh@spritle.com")
User.create(name: "ramesh", password: bc, email: "ramesh@spritle.com")
User.create(name: "vicky", password: bc, email: "vicky@spritle.com")
User.create(name: "manoj", password: bc, email: "manoj@spritle.com")
User.create(name: "arul", password: bc, email: "arul@spritle.com")
User.create(name: "thanu", password: bc, email: "thanu@spritle.com")
User.create(name: "pradeep", password: bc, email: "pradeep@spritle.com")
User.create(name: "shanker", password: bc, email: "shanker@spritle.com")
User.create(name: "anand", password: bc, email: "anand@spritle.com")


#post create
Post.create(title: "Silicon Valley's ultimate status symbol is the snaker", content: "Silicon Valley's ultimate status symbol is the sneaker - here are the rare, expensive and goofy sneakers worn by the top tech CEOs It's a land where jeans, t-shirts, and hoodies reign supreme, and where sneakers are the footwear of choice.", user_id: 3 )

Post.create(title:  "perfect way to dip your toe into entrepreneurship", content: "A woman who left her $500,000-a-year job to work for herself says too many entrepreneurs make a huge mistake before they even start", user_id: 4)

Post.create(title: "One tweet perfectly highlights the bizarre position Microsoft is in with 'Minecraft'" , content: "What makes this so weird is Spencer is the guy in charge of Microsoft's gaming division. That makes him responsible for sales of Microsoft's Xbox One game console. And the Switch is Nintendo's latest rival to the Xbox One", user_id: 5)

Post.create(title: "A 30-year-old who Airbnb-hops around the world explains how a broken kettle helped her escape the 'scarcity mindset'" , content: "This work and traveling 'digital nomad' lifestyle is just a different way of life for me and can be sustainable, so I think long term about it, Lee told Business Insider. But that hasn't always been her philosophy. At one point, she says, penny-pinching got the best of her.", user_id: 6)

Post.create(title: "Trump's allies see a 'civil war' on trade within his administration, and which side wins is anyone's guess" , content: "The early acts of this film proved disappointing to some of his trade allies, even as his administration crossed the 100-day mark by pointing to a withdrawal from the Trans-Pacific Partnership, an increased emphasis on enforcement of trade laws already on the books, and a series of executive orders aimed fulfilling at his campaign promises.", user_id: 7)

Post.create(title: "The best Snapchat tips, tricks, and secret hacks" , content: "Even for the young folks who make up the bulk of its users, there are lots of hidden features to uncover.", user_id: 8)

Post.create(title: "US-backed forces just got ISIS to surrender a Syrian city, and it's not the first time it's happened" , content: "The Syrian Arab Coalition and Syrian Democratic Forces completed the liberation of the Tabqah Dam, as well as the city of Tabqah and its nearby airfield, on Wednesday, according to a US Central Command statement.", user_id: 9)

Post.create(title: "These are 10 fastest police cars in America" , content: "For the 2017 model year, Michigan's finest tested 13 vehicles that all derivations of the Chevrolet Caprice, Chevrolet Tahoe, Dodge Charger, Ford Taurus, and Ford Explorer production models.", user_id: 10)


#comment create

Comment.create(post_id: 5, user_id: 4, body: "bull sh*t !! Idiots, are we in 18th century ! Whatever anyone is, how matters ?? God made everyone different !! Illiterates are writing articles at this site ! I will not visit this site or anything by it again !!")

Comment.create(post_id: 8, user_id: 7, body: "is it any thing to do with public? why you write this type of nonsense? learn some sense")

Comment.create(post_id: 3, user_id: 3, body: "Nokia hired by Microsoft that's why Microsoft logo it's displaying..")

Comment.create(post_id: 5, user_id: 6, body: "Gays must have the separate country/State to live freely and at quite ease. Anyone who feel different inclination should go there to join his real friends.")


#like asign
Post.all.each{|p| p.update_attribute(:likes, 4.times.map{rand(1...9) }.join  ) }

