# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Review.destroy_all


50.times do |index|

  @product = Product.create!({name: Faker::Food.spice,
                  cost: rand(50),
                  country_of_origin: "fun"})

5.times do |index|
  Review.create!({author: Faker::Food.spice,
                  content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
                  rating: 4,
                  product_id: @product.id})

end
end

p "Created #{Product.count} products and #{Review.count} reviews! "
