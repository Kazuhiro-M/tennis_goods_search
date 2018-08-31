class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nickname
      t.integer :sex
      t.integer :nationality
      t.integer :racket_id

      t.timestamps
    end
  end
end
