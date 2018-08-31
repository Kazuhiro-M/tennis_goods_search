class Ranking < ApplicationRecord
    belongs_to :racket
    validates :ranking_year, presence: true
    validates :ranking_month, presence: true
    validates :ranking_week, presence: true
    validates :rank, presence: true
    validates :racket_id, presence: true
end
