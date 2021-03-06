# Lightning

Lightning is an Elixir package for making simple REST API endpoints based on Plug

[![Hex version badge](https://img.shields.io/hexpm/v/lightning.svg)](https://hex.pm/packages/lightning)
[![Docs](https://img.shields.io/badge/docs-lightning-blue.svg)](https://hexdocs.pm/lightning/Lightning.html)



# How to get started:

Create a new file (App.ex)


```elixir
defmodule App do 
   use Lightning.HTTP
   import Lightning

 #Create a new route endpoint
 #Route: GET "/helloworld/"
 def route("GET", ["helloworld"], conn) do

    #Set additional response information (based on Plug responses)
    conn 
    |> put_resp_header("Hello", "World")
    |> put_resp_content_type("text/html")
    |> put_resp_cookie("abc", "def")
    |> put_status(200)

    #Send a text response with a statuscode of 200:
    text(conn, 200, "Hello world")
   end
end
```
# Running the server
Start up a server using the iex command:
```elixir
    iex -S mix
    iex> {:ok, _} = Lightning.start(5000, App, :dev)
    
```

Navigating to localhost:5000/helloworld will output text response:<br>
```Hello world```


# Example Code

![code example](https://i.imgur.com/DYQREls.png)
