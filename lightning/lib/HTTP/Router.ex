defmodule Router do
  defmacro __using__(_opts) do
    quote do
      def init(options) do
        IO.puts "starting up Server"
        options
      end
      def call(conn, _opts) do
          res = Plug.Conn
          
        route(conn.method, conn.path_info, conn, res)
      end
    end
  end
end