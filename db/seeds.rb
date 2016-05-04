# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = [
  { name: "Flora Stone Maxi Dress", price: 35600, user_id: 1, description: "V-neck maxi in tropical print featuring adjustable spaghetti straps and center cutout with tie at bus", category: "dress", stock:20  },
  { name: "Eyelet-Yoke Top", price: 4500, user_id: 1, description: "Sleeveless top in floral motif featuring crochet yoke and vertical insets at front and back", category: "blouse", stock:20  },
  { name: "Tree of Life Pendant Necklace", price: 9130, user_id: 2, description: "Sterling silver necklace featuring polished pendant with gold-plated tree at center and diamond-studded leaves", category: "jewelry", stock:20  },
  { name: "Bold Stainless Steel Bracelet Watch", price: 55000, user_id: 2, description: "Elegant brushed stainless steel watch featuring white sunray dial with signature dot at 12 o'clock", category: "watch", stock:20  },
  { name: "Cedar Street Bag", price: 28000, user_id: 3, description: "Colorful faux-leather satchel featuring hardware feet and removable cross-body strap", category: "bag", stock:20  },
  { name: "Family Tree Personalized Names Necklace", price: 2900, user_id: 3, description: "Personalized family necklace with copper family tree charm in silver washer by DistinctlyIvy", category: "jewelry", stock:20  },
  { name: "Ally Secret Trellis Long Silk Scarf", price: 15900 , user_id: 4, description: "Silk scarf in windowpane gingham with flowery ombre-tone border", category: "scarf", stock:20  },
  { name: "Good Vibes Crinkle Wrap", price: 15900 , user_id: 4, description: "Lightweight color-block scarf featuring delicate eyelash fringe and glittering ends", category: "scarf", stock:20  },
  { name: "Carrson Dress Sandal", price: 90000 , user_id: 5, description: "Ankle-strap sandal in rich leather featuring covered block heel and single toe", category: "shoes", stock:20  },

]

products.each do |product|
  Product.create product
end


users = [
  { name: "Jillian",
    user_name: "jillian",
    email: "jillian@example.com" },
  { name: "Justine",
    user_name: "justine",
    email: "justine@example.com" },
  { name: "Melissa",
    user_name: "melissa",
    email: "melissa@example.com" },
  { name: "Lisa",
    user_name: "lisa",
    email: "lisa@example.com" },
  { name: "Jeremy",
    user_name: "jeremy",
    email: "jeremy@example.com" }
]

users.each do |user|
  User.create(user)
end

orders = [
{order_state: "pending", user_id: 1, total: 4399},
{order_state: "pending", user_id: 2, total: 110000},
{order_state: "paid", user_id: 3, total: 84000},
{order_state: "complete", user_id: 4, total: 63910},
{order_state: "canceled", user_id: 5, total: 71200},
]
orders.each do |order|
  Order.create order
end


order_items = [
{product_id: 1, order_id: 5, quantity: 2},
{product_id: 3, order_id: 4, quantity: 7},
{product_id: 5, order_id: 3, quantity: 3},
{product_id: 4, order_id: 2, quantity: 2},
{product_id: 2, order_id: 1, quantity: 1}
]

order_items.each do |order_item|
  OrderItem.create order_item
end

reviews = [
 { product_id: 1, user_id: 5, review: "This dress was a splurge, but I love it! I wear it to my volunteer gig at Dolphin World all the time.", rating: 4 },
 { product_id: 2, user_id: 4, review: "So comfy! Also, one of my grandkids puked on it, and the stain came right out. 10/10 would recommend to a friend.", rating: 5 },
 { product_id: 3, user_id: 4, review: "Got this for my wife. She wore it only one time and one of the diamonds popped out. Very disappointed.", rating: 1 },
 { product_id: 4, user_id: 3, review: "I wore this on my cruise to the Bahamas and got so many compliments. Unfortunately I found out it wasn't waterproof.", rating: 3 },
 { product_id: 5, user_id: 2, review: "Well-made for faux-leather, easily holds a book, sweater, and farmer's market purchases.", rating: 4 }
 ]

reviews.each do |review|
Review.create(review)
end