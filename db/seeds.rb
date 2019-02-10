# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 's@s.com',password: 'pppppp', full_name: 'Customer', phone_number:'01212531765').save

c1 = Category.create(cat_name:'Men')
c2 = Category.create(cat_name:'Women')
c3 = Category.create(cat_name:'Bags')
c4 = Category.create(cat_name:'T-Shirts')
c5 = Category.create(cat_name:'Shoes')
c6 = Category.create(cat_name:'Hoodies')
c7 = Category.create(cat_name:'Clothes')


p1 = Product.create(pro_name:'Blue Dress', price: 250)
p2 = Product.create(pro_name:'Black Shirt', price: 100)
p3 = Product.create(pro_name:'Red Skirt', price: 200)
p4 = Product.create(pro_name:'Black Skull Hoodies', price: 150)
p5 = Product.create(pro_name:'white Skull T-Shirt ', price: 175)
p6 = Product.create(pro_name:'Blue Ninja T-Shirt', price: 152)

p1.category_ids = p1.category_ids << c2.id << c7.id
p2.category_ids = p2.category_ids << c1.id << c4.id
p3.category_ids = p3.category_ids << c2.id << c7.id
p4.category_ids = p4.category_ids << c6.id << c7.id << c1.id << c2.id
p5.category_ids = p5.category_ids << c2.id << c7.id
p6.category_ids = p6.category_ids << c1.id << c7.id
# p2.categories = c2
# p3.categories = c3
# p4.categories = c4
# p5.categories = c5
# p6.categories = c1

c1.save
c2.save
c3.save
c4.save
c5.save
c7.save
c6.save

p1.save
p2.save
p3.save
p4.save
p5.save
p6.save
