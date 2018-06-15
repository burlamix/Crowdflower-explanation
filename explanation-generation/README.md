# README

This is demo system for explanation generation based on a certain scenario as demonstrated during the presentation for the Crowd Computing course.

It is a Ruby on Rails project, based on Ruby version `2.5.1` and Rails `5.2.0`.

## Installation instructions
Tested on Ubuntu 18.04.

 1. Follow the instructions on [installing Ruby, RoR, and PostgreSQL](https://gorails.com/setup/ubuntu/18.10)
 
 2. In Postgres, create a user called `explanations` with the password `password`, or edit `config/database.yml`
 and create a user/password combination based on your own config.
 
 3. Install required gems
   ```
   cd <wherever you cloned the repo>
   bundle
   ```
 4. Migrate the database
 
     ```Powershell
     rails db:create db:migrate RAILS_ENV=development
     ```
 
 5. Seed the database
 
    ```Powershell
    rails db:seed
    ```

6. Start the server by running the following command in the project folder

    `rails s`
    
7. Visit `localhost:3000` to see the demo project

    The demo scenario is located at `localhost:3000/scenarios/1`, when the page is refreshed, new explanations are generated based on the demo scenario.