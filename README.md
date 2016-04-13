Project #1:  Custom built Ping Pong API, this is a RESTful API built with Ruby on Rails.
Project #2:  Ping Pong Scoreboard, this is a normal rails project with some basic bootstrap front-end work.  Ping Pong score data is being sourced from the API.  The main page's score data is being fetched via ActiveResource and the secondary page utilizes AJAX.


Ruby Version: 2.2.4
Rails Version: 4.2.5.1


Application Instructions:
* I used a PostgreSQL database, the database name for the API project is 'ping_pong_api' and the normal rails project is 'ping_pong_score'
* Prior to running server, please seed each database with the 'rake db:seed' command then run 'rake db:migrate'
* Run 'bundle install' to install all required gems
* You can just run each application's server like normal with 'rails s', the API's port has already been set to 3001
* Project Tests can be ran with the 'bundle exec rspec' command.  API endpoint unit tests are written via RSpec and front-end project has an integration test written via Capybara.




Thanks for taking the time to look at my work.

John Bergandino | 2016
jbergandino@gmail.com

