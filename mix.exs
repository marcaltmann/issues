defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app:             :issues,
      escript:         escript_config(),
      name:            "Issues",
      version:         "0.1.0",
      source_url:      "https://github.com/marcaltmann/issues",
      elixir:          "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps:            deps()
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
      { :httpoison, "~> 1.5.1" },
      { :poison,    "~> 4.0.1" },
      { :ex_doc,    "~> 0.21.1" },
      { :earmark,   "~> 1.3.5" }
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
