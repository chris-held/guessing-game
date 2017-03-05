# GuessingGame

# API

## Games (the only resource)

### GET /:id 
Returns information about a game.

### POST /
Create a new game. Include `difficulty` in the body

### PUT /:id 
Make a guess. Include `guess` in the body

##Heroku / Demo info
The heroku server is running at https://murmuring-waters-39193.herokuapp.com. 
There's a sample UI on codepen here http://codepen.io/chris-held/full/wWpQaY/.


To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
