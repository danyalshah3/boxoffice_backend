Initialized with: rails new boxoffice-backend --database=postgresql --api Frontend initialized with: npx create-react-app boxoffice-frontend

You should use --database=postgresql so that its easy for you to deploy the application on heroku. 

To Run
Run rails db:create
Run rails db:migrate
Create a .env file in the root directory of your application
Get a API Key and add it to the dotenv in the following format API_KEY=<YOUR API KEY HERE>


Create your own api using the seed file. Optional: Use serializers to customize the JSON data To be able to send a request to your Api, use rack-cors. Inside the gem file add "gem 'rack-cors'" and do bundle install. You also need to go inside the initializers/cors.rb file and uncomment

You should change origins 'example.com' to origins '*' so that it can interact to any origin.

You can use rails g resource to make your models along with controllers, database and serializers if you need to. Remeber to use --no-test-framework to avoid tests. Once you have the migrations, you use rails db:migrate to migrate all the tables.

You can use seed file to make your own api:

This file should contain all the record creation needed to seed the database with its default values.
The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).




