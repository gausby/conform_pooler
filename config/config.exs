use Mix.Config

config :pooler, pools: [
  [name: :riaklocal1,
   group: :riak,
   start_mfa: {Riak.Connection, :start_link, []}]
]

# import_config "#{Mix.env}.exs"
