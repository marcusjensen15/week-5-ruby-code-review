# _Product and Review Application_

#### _A great way to keep track of your products! Janyary 17th, 2020_

#### By _**Marcus Jensen**_

# Description

This application offers the user full CRUD functionality between a company's products and reviews. When a user removes a product, all of the reviews for that product are deleted. When a user is creating a product or review, they aren't allowed to leave any fields blank. If they try to submit a review over five, or with a content body of less than 50 or more than 250 characters, the application throws an error. Basic styling has been applied to the document. BEFORE YOU TRY TO RUN THE APP, you will need to Seed the database or else it will throw an error. run Rake db:seed in the terminal before opening.

(UPDATE AS OF January 24, 2020 )

User authentication now added to the application. People who are not users are able to only read the main page of the application displaying the full product list, highest reviewed products, and products made in America. Users are able to view the details of a given product, and leave a review. Normal users are not able to edit or delete reviews or products, nor can they create products.

Admin users have full permission to: Create, Read, Update and Delete both products and reviews. Integration testing has been performed on all of these features and it is all passing.

## Setup/Installation Requirements


* DO NOT specify Ruby version in your Gemfile. Clone this repo down to your local machine.

* When you clone down this database run the following commands: bundle install, rake db:create, rake db:migrate, rake db:test:prepare. The database has been seeded with 50 products and 250 reviews. Run the test suite with the 'rspec' command.



## Known Bugs

_To my knowledge, this bug has no known bugs. please notify me if you encounter one. Everything perfoming to specs laid out for me in the project guidelines. In future, may want to add full CRUD functionality for Volunteers.

Update as of January 2020

Having difficulty getting Capybara to allow me to create a user account within an integration test. While I'm actually using the app it allows me to do this, I'm just not sure how to test for it. Not a bug just something to be aware of.
_

## Support and contact details

_Marcus Jensen email: marcusjensen1515@gmail.com_

## Technologies Used

_HTML, ERB, Ruby, SQL, Rails_

### License

*MIT License*

Copyright (c) 2020 **_Marcus Jensen, Epicodus_**
