defmodule UeberauthProxyHelper.MixProject do
  use Mix.Project

  def project do
    [
      app: :ueberauth_proxy_helper,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description()
    ]
  end

  defp description do
    "A plug to overwrite the `Plug.Conn`'s `host` based on proxied request headers."
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.8"}
    ]
  end
end
