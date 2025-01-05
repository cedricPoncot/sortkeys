defmodule Sortkeys.MixProject do
  use Mix.Project

  def project do
    [
      app: :sortkeys,
      version: "0.1.0",
      elixir: "~> 1.18-dev",
      start_permanent: Mix.env() == :prod,
      description: "Recursively sorts the keys of a map.",
      deps: deps(),
      package: package()
    ]
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      name: "sort_keys",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/cedricPoncot/sortkeys"},
      maintainers: ["0x9dd"],
      files: ~w(lib mix.exs README* LICENSE* CHANGELOG*)
    ]
  end
end
