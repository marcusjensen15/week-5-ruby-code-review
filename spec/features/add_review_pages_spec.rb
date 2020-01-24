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

    #modifying test to account for sign up step before
    visit "/"
    click_link 'Sign up'

    # fill_in "user[email]", :with => 'test3@test.com'
    # fill_in 'Password', :with => 'password'
    # fill_in 'Password confirmation', :with => 'password'
    # #find out how to check the admin box
    # page.choose("user_admin_true")
    #
    # click_on 'Sign Up'
    #
    #   expect(page).to have_content "You've successfully signed up!"




    #modifying test to account for sign up step above
    # @product = Product.create!({name: "beef",
    #   cost: rand(50),
    #   country_of_origin: "fun"})
    #
    #   @review = Review.create!({author: Faker::Food.spice,
    #     content_body: "lajsdfljadslfjaldjf;lakjdfl;kasdjflkajsdf;lkajsdfl;kajsdfl;ajksdf;lkjasdkl;fjasl;dfjaskl;dfjals;kdjflasjdf;laksdjflakjsdflkajsdfl;jas",
    #     rating: 4,
    #     product_id: @product.id})

        # visit "/products/#{@product.id}"
        #
        # click_link 'Add a new review'
        # fill_in 'Author', :with => 'Me'
        # fill_in 'Content body', :with => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        # fill_in 'Rating', :with => 2
        # click_on 'Create Review'
        #
        # expect(page).to have_content "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
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
