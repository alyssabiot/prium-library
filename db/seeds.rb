Booking.destroy_all
Book.destroy_all
User.destroy_all

user1 = User.new(email: "alyssa.biot@gmail.com", first_name: "Alyssa", last_name: "Biot")
user1.save

user2 = User.new(email: "romain.lewagon@gmail.com", first_name: "Romain", last_name: "Lewagon")
user2.save

user3 = User.new(email: "jerome.lewagon@gmail.com", first_name: "Jérôme", last_name: "Lewagon")
user3.save

book1 = Book.new(title: "Comme Convenu", author: "Laurel", abstract: "The life of a video game startup", aasm_state: "borrowed")
book1.save

book2 = Book.new(title: "Hyperbole", author: "Allie Brosh", aasm_state: "borrowed")
book2.save

book3 = Book.new(title: "Au coeur de Fukushima", author: "Kazuto Tatsuta", abstract: "After Fukushima : the cleaning")
book3.save

book4 = Book.new(title: "Dr Rat", author: "William Kotzwinkle")
book4.save

booking1 = Booking.new()
booking1.user = user1
booking1.book = book1
booking1.save

booking2 = Booking.new()
booking2.user = user2
booking2.book = book2
booking2.save
