class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.integer :ranking_year
      t.integer :ranking_month
      t.integer :ranking_week
      t.integer :rank
      t.integer :racket_id

      t.timestamps
    end
  end
end
