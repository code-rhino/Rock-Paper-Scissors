json.array!(@game_stats) do |game_stat|
  json.extract! game_stat, :result
  json.url game_stat_url(game_stat, format: :json)
end