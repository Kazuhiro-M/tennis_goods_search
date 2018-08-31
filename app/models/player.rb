class Player < ApplicationRecord
  belongs_to :racket
  validates :name, presence: true, length: { maximum: 30}
  validates :sex, presence: true
  validates :racket_id, presence: true
  has_attached_file :image, styles: { medium: "200x150>", thumb: "50x50>" }
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png image/gif)

end
