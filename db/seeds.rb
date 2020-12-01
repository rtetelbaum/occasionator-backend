# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Roman', last_name: 'Tetelbaum', email: 'rtetelbaum@mailbox.org')
user2 = User.create(first_name: 'Lee', last_name: 'Michaeli', email: 'leeisr@gmail.com')

card1 = Card.create(image_url: './assets/occasions/birthday/birthday02.png', sender_email: 'rtetelbaum@mailbox.org', recipient_email: 'grandma@gmail.com', subject: 'Happy Birthday', message: 'Happy Birthday Grandma! Love you!', user: user1)
card2 = Card.create(image_url: './assets/occasions/christmas/christmas04.jpg', sender_email: 'leeisr@gmail.com', recipient_email: 'cheese@cheese.com', subject: 'happy chrysler', message: 'send me money', user: user2)
card3 = Card.create(image_url: './assets/occasions/birthday/birthday03.jpg', sender_email: 'rtetelbaum@mailbox.org', recipient_email: 'mom@gmail.com', subject: 'Happy Birthday', message: 'Happy Birthday Mom! Love you!', user: user1)
card4 = Card.create(image_url: './assets/occasions/christmas/christmas05.jpg', sender_email: 'leeisr@gmail.com', recipient_email: 'butter@butter.com', subject: 'mas chris', message: 'send me more money', user: user2)
card5 = Card.create(image_url: './assets/occasions/birthday/birthday07.jpg', sender_email: 'rtetelbaum@mailbox.org', recipient_email: 'dad@gmail.com', subject: 'Happy Birthday', message: 'Happy Birthday Dad! Love you!', user: user1)
card6 = Card.create(image_url: './assets/occasions/christmas/christmas08.jpg', sender_email: 'leeisr@gmail.com', recipient_email: 'mom@dad.com', subject: 'merry crisis', message: 'send me even more money', user: user2)

reminder1 = Reminder.create(text: 'Send grandpa birthday card', user: user1)
reminder2 = Reminder.create(text: 'Send grandma birthday card', user: user1)
reminder3 = Reminder.create(text: 'Send son christmas card', user: user1)
reminder4 = Reminder.create(text: 'Send son birthday card', user: user2)
reminder5 = Reminder.create(text: 'Send mom mothers day card', user: user2)
reminder6 = Reminder.create(text: 'Send grandpa hannukah card', user: user2)