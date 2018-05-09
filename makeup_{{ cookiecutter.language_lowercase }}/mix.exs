defmodule Makeup{{ cookiecutter.language_uppercase }}.Mixfile do
  use Mix.Project

  def project do
    [
      app: :makeup_{{ cookiecutter.language_lowercase }},
      version: "0.4.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      # Package
      package: package(),
      description: description(),
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  defp description do
    """
    {{ cookiecutter.language_uppercase }} lexer for the Makeup syntax highlighter.
    """
  end

  defp package do
    [
      name: :makeup_{{ cookiecutter.language_lowercase }},
      licenses: ["BSD"],
      maintainers: ["{{ cookiecutter.maintainer_full_name }} <{{ cookiecutter.maintainer_email }}>"],
      links: %{"GitHub" => "https://github.com/{{ cookiecutter.github_username }}/makeup_{{  cookiecutter.language_lowercase }}"}
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
      {:makeup, "~> 0.4.0"},
      {:ex_doc, "~> 0.18.3", only: [:dev]},
    ]
  end
end
