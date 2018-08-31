json.extract! player, :id, :name, :nickname, :sex, :nationality, :racket_id, :image, :created_at, :updated_at
json.url player_url(player, format: :json)
