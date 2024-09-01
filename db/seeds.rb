require "open-uri"

Booking.destroy_all
Offer.destroy_all
User.destroy_all
user = User.create(email: "pleinlabox@gmail.com", password: "555555")

file = URI.open("https://images.unsplash.com/photo-1575867094974-9e16b6f55360?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

offer = Offer.new(
  user: user,
  title: "Be a firefighter !",
  description: "You always dreamt to be a hero ?
  Come with our special NYC unit of firefighters for a day a save lifes !
  All founds will be refounded to firefighter's orphans.",
  price: 95,
  address: "161 S 2nd St, Brooklyn, NY 11211, USA",
  places: 2
)
offer.photo.attach(io: file, filename: "firefighter.png", content_type: "image/png")
offer.save


file = URI.open("https://images.unsplash.com/photo-1588499788581-b6ecc5dd43a4?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

offer = Offer.new(
  user: user,
  title: "Russian Roulette",
  description: "Depressed ? Tired of living ? Make your life great again by fearing to lose it, or lose it for real.
  You'll be forever changed by this transforming crazy adventure !
  (The only bullet in the magnum 357 you'll use is in gold !)",
  price: 150,
  address: "17 rue de Trévise, 75009 Paris, France",
  places: 6
)
offer.photo.attach(io: file, filename: "bullet.png", content_type: "image/png")
offer.save

file = URI.open("https://images.unsplash.com/photo-1675117320049-1b1d78194321?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

offer = Offer.new(
  user: user,
  title: "Time Traveler",
  description: "Always thought you should have been 20 in Woodstock
  or eager to see what future on earth looks like ?
  Choose your era and travel there for 24 hours, not a minute more !",
  price: 1000,
  address: " 11, Yeonhui-ro 2-gil, Seodaemun-gu, Seodaemun-gu, 03784 Séoul, Corée du Sud",
  places: 1
)
offer.photo.attach(io: file, filename: "timetraveler.png", content_type: "image/png")
offer.save

file = URI.open("https://images.unsplash.com/photo-1546884808-f4a7484092cb?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

offer = Offer.new(
  user: user,
  title: "London Call",
  description: "Get an adrenaline boost with our London buses thief challenge !
  As a team of 8, you should be able to neutralize a Londonian bus driver and steal his vehicule.
  Bonus point for each passenger you have as an hostage",
  price: 150,
  address: "Great Russell St, London WC1B 3DG, United Kingdom",
  places: 8
)
offer.photo.attach(io: file, filename: "londonbus.png", content_type: "image/png")
offer.save

file = URI.open("https://images.unsplash.com/photo-1550747528-cdb45925b3f7?q=80&w=1889&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

offer = Offer.new(
  user: user,
  title: "Ride a unicorn !",
  description: "You've always been told unicorns don't exist ? UNTRUE ! We have a whole stable of them to prove it. Book the ride of your life !",
  price: 300,
  address: "57G3+G8C, Nuuk 3905? groenland",
  places: 6
)
offer.photo.attach(io: file, filename: "unicorn.png", content_type: "image/png")
offer.save

file = URI.open("https://cdn.shopify.com/s/files/1/1201/4358/files/20230920_093623_3.jpg?v=1695695807")

offer = Offer.new(
  user: user,
  title: "Bucket List",
  description: "You're dying soon ? Your life is meaningless ? Give us your bucket list and we'll make it happen for you in the shortest among of time !",
  price: 1000,
  address: "01 Rue 20 Bkp, Lomé, Togo",
  places: 1
)
offer.photo.attach(io: file, filename: "bucketlist.png", content_type: "image/png")
offer.save

p "Created #{Offer.count} offers"
