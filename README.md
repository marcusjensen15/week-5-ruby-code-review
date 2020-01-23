# _Product and Review Application_

#### _A great way to keep track of your products! Janyary 17th, 2020_

#### By _**Marcus Jensen**_

# Description

This application offers the user full CRUD functionality between a company's products and reviews. When a user removes a product, all of the reviews for that product are deleted. When a user is creating a product or review, they aren't allowed to leave any fields blank. If they try to submit a review over five, or with a content body of less than 50 or more than 250 characters, the application throws an error. Basic styling has been applied to the document. BEFORE YOU TRY TO RUN THE APP, you will need to Seed the database or else it will throw an error. run Rake db:seed in the terminal before opening.

## Setup/Installation Requirements


* DO NOT specify Ruby version in your Gemfile. Clone this repo down to your local machine.

* When you clone down this database run the following commands: bundle install, rake db:create, rake db:migrate, rake db:test:prepare. The database has been seeded with 50 products and 250 reviews. Run the test suite with the 'rspec' command.



## Known Bugs

_To my knowledge, this bug has no known bugs. please notify me if you encounter one. Everything perfoming to specs laid out for me in the project guidelines. In future, may want to add full CRUD functionality for Volunteers_

## Support and contact details

_Marcus Jensen email: marcusjensen1515@gmail.com_

## Technologies Used

_HTML, ERB, Ruby, SQL, Rails_

### License

*MIT License*

Copyright (c) 2020 **_Marcus Jensen, Epicodus_**
