require 'rails_helper'

describe "the add a review as an admin" do
  it "allows admins to create reviews" do
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
          click_on 'commit'
          visit "/products/#{@product.id}"
          click_link 'Add a new review'
          fill_in 'Author', :with => 'Me'
          fill_in 'Content body', :with => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
          fill_in 'Rating', :with => 2
          click_on 'Create Review'
          expect(page).to have_content "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        end
      end

      describe "the add a review as an normal user" do
        it "allows normal users to create reviews" do
          @product = Product.create!({name: "beef",
            cost: rand(50),
            country_of_origin: "fun"})

            @review = Review.create!({author: Faker::Food.spice,
              content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
              rating: 4,
              product_id: @product.id})

              @user = User.create!({email: "test8@test.com",
                password: "password",
                admin: false})
                visit "/"
                click_link 'Sign in'
                fill_in "email", :with => @user.email
                fill_in 'password', :with => @user.password
                click_on 'commit'
                visit "/products/#{@product.id}"
                click_link 'Add a new review'
                fill_in 'Author', :with => 'Me'
                fill_in 'Content body', :with => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxb'
                fill_in 'Rating', :with => 2
                click_on 'Create Review'
                expect(page).to have_content "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxb"
              end
            end
