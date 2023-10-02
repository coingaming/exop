defmodule Exop.Mixfile do
  use Mix.Project

  @description """
  A library that provides a few macros which allow
  you to encapsulate business logic and validate incoming
  params over predefined contract.
  """

  def project do
    [
      app: :exop,
      version: "1.4.4",
      elixir: ">= 1.6.0",
      name: "Exop",
      description: @description,
      organization: "coingaming",
      package: package(),
      deps: deps(),
      source_url: "https://github.com/coingaming/exop",
      docs: [extras: ["README.md"]],
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:makeup_html, ">= 0.0.0", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Reio Piller"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/coingaming/exop"}
    ]
  end
end
