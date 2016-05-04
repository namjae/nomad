defmodule Nomad.Mixfile do
  use Mix.Project

  def project do
    [
     app:             :nomad,
     version:         "0.4.0",
     elixir:          "~> 1.2",
     build_embedded:  Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps:            deps
   ]
  end

  def application do
    [
      applications: [:logger, :httpoison, :friendly, :goth, :table_rex],
      mod: {Nomad, []}
    ]
  end

  defp deps do
    [
      {:exrm,             "~> 1.0.1"},
      {:credo,            "~> 0.3",  only: [:dev, :test]},
      {:ex_doc,           "~> 0.11", only: [:dev]},
      {:httpoison,        "~> 0.8.1"},
      {:table_rex,        "~> 0.8.0"},
      {:friendly,         "~> 1.0.0"},
      {:goth,             "~> 0.0.1"},
      {:ex_aws,           github: "sashaafm/ex_aws", branch: "rds-basic-operations"},
      {:gcloudex,         github: "sashaafm/gcloudex"},
      #{:gcloudex,         path: "/home/sashaafm/Documents/gcloudex"},
      # {:nomad_aws, git: "git@github.com:sashaafm/nomad_aws.git"}
     # {:nomad_aws,        path: "/home/sashaafm/Documents/nomad_aws", optional: true},
      # {:nomad_gcl, git: "git@github.com:sashaafm/nomad_gcl.git"}
     # {:nomad_gcl,        path: "/home/sashaafm/Documents/nomad_gcl", optional: true},
      {:nomad_behaviours, path: "/home/sashaafm/Documents/nomad_behaviours"}      
    ]        
  end
end
