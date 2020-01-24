require 'rails_helper'

describe "Allows user to navigate to the sign up page" do
  it "display user sign up page" do



    @product = Product.create!({name: "beef",
      cost: rand(50),
      country_of_origin: "fun"})

      @review = Review.create!({author: Faker::Food.spice,
        content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
        rating: 4,
        product_id: @product.id})
        visit "/"
        click_link 'Sign up'
        expect(page).to have_content "Email"
      end  
    end
