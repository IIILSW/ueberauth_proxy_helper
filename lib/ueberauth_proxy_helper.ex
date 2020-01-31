defmodule UeberauthProxyHelper do
  @moduledoc """
  A plug to overwrite the `Plug.Conn`'s `host` based on proxied request headers.

  Ueberauth is looking for conn.host field for callback url construction
  If u are not able to pass this field by NGINX directly,
    put this plug into pipeline in router.ex
  """

  @behaviour Plug

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    forvarded_host = Plug.Conn.get_req_header(conn, "x-forwarded-host") |> List.first()

    if forvarded_host do
      conn
      |> Map.put(:host, forvarded_host)
    else
      conn
    end
  end

end
