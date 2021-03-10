# Phoenix Absinthe Authenticated Subscriptions

Phoenix absinthe authenticated subscriptions article

## 🚧 Dependencies/[.tools-versions](https://www.mitchellhanberg.com/post/2017/10/05/installing-erlang-and-elixir-using-asdf/)

- Elixir (`~> 1.10`)
- Erlang (`~> 22.0`)
- PostgreSQL (`~> 10.6`)

## 🏎 Kickstart

### Environment variables

We are not using many environemnt variables for now, meaning you have to manually create the `*.secret.exs` files and add them to the server or injecting variables somehow.

### Initial setup

1. Install Mix dependencies with `mix deps.get`
2. Create and migrate the database with `mix ecto.setup`
3. Start the Phoenix server with `iex -S mix phx.server`

### Test the solution

Open the [GraphiQL Interface](http://localhost:4000/v1/graphiq) and import [this workspace](graphiql_workspace.json).[orginal workspace](https://gist.github.com/marinho10/cdb0814eea1ad1aba9b8faa2048d67aa).

1. Run the `mutation - accountsLogin`. The default seeded login is [here](priv/repo/seeds.exs).

```graphql
mutation {
  accountsLogin(
    email:"me@gmail.com",
    password:"12345678Ab"
  ){
    token
  }
}
```

2. Run the `query - accountsMe` and copy the token returned
3. Change the ws url token on `subscription - accountsUserCount` and run the query
4. Verify `accountsUserCount` value changing every 10 seconds on the result pannel
