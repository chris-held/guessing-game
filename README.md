# GuessingGame

# API

## Games (the only resource)

### GET /:id 
Returns information about a game.

Response will look something like this:
```
{
  "won": false,
  "id": 10,
  "guesses_left": 6,
  "difficulty": "easy"
}
```

(completed games return what the number was)
### POST /
Create a new game. Include `difficulty` in the body (valid values are easy, normal, and hard)

Response will look something like this:
```
{
  "id": 3,
  "guesses_left": 5
}
```

### PUT /:id 
Make a guess. Include `guess` in the body


Response will look something like this:
```
{
  "won": false,
  "results": "The number is lower than your guess",
  "previous_guess": 42,
  "id": 3,
  "hint": "The number is less than the longest field goal made in the NFL",
  "guesses_left": 4,
  "difficulty": "normal"
}
```

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
