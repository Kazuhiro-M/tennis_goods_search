class Racket < ApplicationRecord
  belongs_to :series
  has_many :players, dependent: :destroy
  has_many :rankings, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50}
  validates :maker_id, presence: true
  validates :series_id, presence: true
  validates :level, presence: true
  validates :point_physical, presence: true
  validates :point_playing_style, presence: true
  validates :point_support, presence: true
  validates :point_spin, presence: true
  validates :point_feeling, presence: true
  validates :spec_weight, presence: true
  validates :spec_face, presence: true
  validates :spec_thickness, presence: true
  validates :spec_balance, presence: true
  validates :spec_length, presence: true
  validates :spec_string_pattern, presence: true
  validates :spec_model, presence: true
  validates :url, presence: true, length: { maximum:500 }
  has_attached_file :image, styles: { medium: "200x150>", thumb: "50x50>" }
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png image/gif)
  validates :image, presence: true
end
