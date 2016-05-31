use Mix.Config

config :pooler, pools: [
  [name: :riaklocal1,
   group: :riak,
   max_count: 10,
   init_count: 5,
   start_mfa: {Riak.Connection, :start_link, []}]
]

# import_config "#{Mix.env}.exs"
