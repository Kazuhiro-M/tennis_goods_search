class CreateRackets < ActiveRecord::Migration[5.1]
  def change
    create_table :rackets do |t|
      t.string :name
      t.integer :maker_id
      t.integer :series_id
      t.integer :model_player_id
      t.integer :level
      t.integer :point_physical
      t.integer :point_playing_style
      t.integer :point_support
      t.integer :point_spin
      t.integer :point_feeling
      t.integer :spec_weight
      t.integer :spec_face
      t.string :spec_thickness
      t.integer :spec_balance
      t.integer :spec_length
      t.string :spec_string_pattern
      t.string :spec_model
      t.string :url
      t.integer :price
      t.integer :page_count
      t.integer :string_id

      t.timestamps
    end
  end
end
