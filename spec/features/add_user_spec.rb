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


    describe "Allows user to navigate to the sign in page" do
      it "display user sign in page" do

        @product = Product.create!({name: "beef",
          cost: rand(50),
          country_of_origin: "fun"})

          @review = Review.create!({author: Faker::Food.spice,
            content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
            rating: 4,
            product_id: @product.id})
            visit "/"
            click_link 'Sign in'
            expect(page).to have_content "Email"
          end
        end


        describe "allows a user to login" do
          it "allows a user to login" do

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
                  # visit "/"

                  expect(page).to have_content "Sign out"
                end
              end

              # not letting me create an account through capybara

              # describe "allows a user to create an account" do
              #   it "allows a user to create an account" do
              #
              #     @product = Product.create!({name: "beef",
              #       cost: rand(50),
              #       country_of_origin: "fun"})
              #
              #       @review = Review.create!({author: Faker::Food.spice,
              #         content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
              #         rating: 4,
              #         product_id: @product.id})

              #         visit "/"
              #         click_link 'Sign up'
              #
              #
              #           fill_in "user[email]", :with => @user.email
              #                fill_in 'Password', :with => @user.password
              #                fill_in 'Password confirmation', :with => @user.password
              #                page.choose("user_admin_false")
              #
              #                click_on 'Sign Up'
              #
              #
              #         # click_on 'commit'
              #         # visit "/"
              #
              #         expect(page).to have_content "Sign out"
              #       end
              #     end
