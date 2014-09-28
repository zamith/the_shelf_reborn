# TheShelf

To start your new Phoenix application you have to:

1. Install dependencies with `mix deps.get`
2. Start Phoenix router with `mix phoenix.start`
3. Run the migrations with `mix ecto.migrate Repo`

Now you can visit `localhost:4000` from your browser.

## Insert dummy data

1. Open iex with the project loaded with `iex -S mix`
2. Create a book with `book = %Book{title: "Something"}`
3. Insert it into the database with `Repo.insert(book)`

## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `TheShelf.Router.start`
