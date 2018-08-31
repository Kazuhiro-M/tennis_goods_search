class AddAttachmentImageToMakers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :makers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :makers, :image
  end
end
