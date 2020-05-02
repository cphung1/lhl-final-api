# Kandi API 
This API was custom built for our [Kandi application](https://github.com/cphung1/kandi). It integrates the Rails 5 ActionCable feature to allow real-time chat features. 

## Dependencies
- rails 5 
- puma 
- bcrypt
- pg

## Getting Started 
1. Install dependencies using the `bundle install` command. 
2. Load migrations `rake db:migrate`.
3. Load the seeded data `rake db:reset`. 
4. Run the server `rails server`. 
