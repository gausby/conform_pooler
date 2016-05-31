defmodule PoolerDeploy.Mixfile do
  use Mix.Project

  def project do
    [app: :pooler_deploy,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger,
                    :riak, :pooler,
                    :conform, :conform_exrm]]
  end

  defp deps do
    [{:riak, "~> 1.0.0"},
     {:pooler, "~> 1.5.0"},
     {:exrm, "~> 1.0.5"},
     {:conform, "~> 2.0.0"},
     {:conform_exrm, "~> 1.0.0"}]
  end
end
