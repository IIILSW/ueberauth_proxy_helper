# UeberauthProxyHelper

UeberauthProxyHelper is a plug to overwrite the `Plug.Conn`'s `host` based on proxied request headers.

By default, Ueberauth is looking for conn.host field for callback url construction
If u are not able to pass this field by NGINX directly, put this plug into pipeline in router.ex

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ueberauth_proxy_helper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ueberauth_proxy_helper, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ueberauth_proxy_helper](https://hexdocs.pm/ueberauth_proxy_helper).

