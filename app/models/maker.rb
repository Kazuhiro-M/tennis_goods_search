class Maker < ApplicationRecord
  has_many :series, dependent: :destroy
  validates :name, presence: true, length: { maximum: 20}
  validates :url, presence: true, length: { maximum: 255}
  has_attached_file :image, styles: { medium: "200x150>", thumb: "50x50>" }
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png image/gif)
  validates :image, presence: true
end
