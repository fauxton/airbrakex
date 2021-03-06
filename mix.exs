defmodule Airbrakex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :airbrakex,
      version: "0.0.5",
      elixir: "~> 1.0",
      description: "Airbrake Elixir Notifier",
      package: package,
      deps: deps
   ]
  end

  def package do
    [
      contributors: ["Michał Kalbarczyk"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/fazibear/airbrakex"}
   ]
  end

  def application do
    [
      applications: [:idna, :hackney, :httpoison]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.7"},
      {:poison, "~> 1.5"}
    ]
  end
end
