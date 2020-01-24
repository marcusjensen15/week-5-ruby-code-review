require 'rails_helper'

describe "the add a product as an admin process" do
  it "lets you add a new product as an admin" do
    @product = Product.create!({name: "beef",
      cost: rand(50),
      country_of_origin: "fun"})

      @review = Review.create!({author: Faker::Food.spice,
        content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
        rating: 4,
        product_id: @product.id})

        @user = User.create!({email: "test5@test.com",
          password: "password",
          admin: true})


          visit "/"
          click_link 'Sign in'


          fill_in "email", :with => @user.email
          fill_in 'password', :with => @user.password

          #find out how to check the admin box


          click_on 'commit'

        visit products_path
        click_link 'Create new product'
        fill_in 'Name', :with => 'Giant Steps'
        fill_in 'Country of origin', :with => 'Jazz'
        fill_in 'Cost', :with => 5
        click_on 'Create Product'
        # expect(page).to have_content 'Project successfully added!'
        expect(page).to have_content 'Giant Steps'
      end

      # it "gives an error when no name is entered" do
      #   visit new_product_path
      #   click_on 'Create Product'
      #   expect(page).to have_content "Name can't be blank"
      # end
    end
