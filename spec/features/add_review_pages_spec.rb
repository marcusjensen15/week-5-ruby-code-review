require 'rails_helper'

describe "the add a review process" do
  it "creates a review" do



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


          visit "/products/#{@product.id}"

          click_link 'Add a new review'
          fill_in 'Author', :with => 'Me'
          fill_in 'Content body', :with => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
          fill_in 'Rating', :with => 2
          click_on 'Create Review'

          expect(page).to have_content "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        end

        # it "gives an error when no name is entered" do
        #   @product = Product.create!({name: "beef",
        #     cost: rand(50),
        #     country_of_origin: "fun"})
        #
        #     @review = Review.create!({author: Faker::Food.spice,
        #       content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
        #       rating: 4,
        #       product_id: @product.id})
        #
        #       visit "/products/#{@product.id}"
        #       click_link 'Add a new review'
        #       click_on 'Create Review'
        #       expect(page).to have_content "Content body is too short"
        #     end
      end

      
