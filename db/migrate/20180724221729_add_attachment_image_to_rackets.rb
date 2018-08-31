class AddAttachmentImageToRackets < ActiveRecord::Migration[5.1]
  def self.up
    change_table :rackets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rackets, :image
  end
end
