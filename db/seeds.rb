# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Card.destroy_all
Reminder.destroy_all

user1 = User.create(first_name: 'Roman', last_name: 'Tetelbaum', email: 'roman@tetelbaum.com')
user2 = User.create(first_name: 'Lee', last_name: 'Michaeli', email: 'lee@michaeli.com')

card1 = Card.create(image_url: 'https://i.ibb.co/cNx9R4V/birthday02.jpg', sender_name: 'Roman', sender_email: 'roman@tetelbaum.com', recipient_email: 'grandma@gmail.com', subject: 'Happy Birthday', message: 'Happy Birthday Grandma! Love you!', user: user1)
card2 = Card.create(image_url: 'https://i.ibb.co/CKrLhdX/christmas04.jpg', sender_name: 'Lee', sender_email: 'lee@michaeli.com', recipient_email: 'grandpa@gmail.com', subject: 'Happy Christmas', message: 'Santa Claus is cool. So are you!', user: user2)
card3 = Card.create(image_url: 'https://i.ibb.co/F8YcLvq/birthday03.jpg', sender_name: 'Roman', sender_email: 'roman@tetelbaum.com', recipient_email: 'mom@gmail.com', subject: 'Happy Birthday', message: 'Happy Birthday Mom! Love you!', user: user1)
card4 = Card.create(image_url: 'https://i.ibb.co/1mT2PXG/holidays05.jpg', sender_name: 'Lee', sender_email: 'lee@michaeli.com', recipient_email: 'son@gmail.com', subject: 'Happy Holidays', message: 'I forgot what religion we raised you with. Happy holidays!', user: user2)
card5 = Card.create(image_url: 'https://i.ibb.co/Zfdd9wV/birthday07.jpg', sender_name: 'Roman', sender_email: 'roman@tetelbaum.com', recipient_email: 'dad@gmail.com', subject: 'Happy Birthday', message: 'Happy Birthday Dad! Love you!', user: user1)
card6 = Card.create(image_url: 'https://i.ibb.co/7CnLVLg/holidays08.jpg', sender_name: 'Lee', sender_email: 'lee@michaeli.com', recipient_email: 'daughter@gmail.com', subject: 'Happy Holidays', message: 'Ask your brother', user: user2)

reminder1 = Reminder.create(text: 'Send grandpa birthday card', user: user1)
reminder2 = Reminder.create(text: 'Send grandma birthday card', user: user1)
reminder3 = Reminder.create(text: 'Send son christmas card', user: user1)
reminder4 = Reminder.create(text: 'Send son birthday card', user: user2)
reminder5 = Reminder.create(text: 'Send mom mothers day card', user: user2)
reminder6 = Reminder.create(text: 'Send grandpa hanukkah card', user: user2)