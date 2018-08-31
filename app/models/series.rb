class Series < ApplicationRecord
  belongs_to :maker
  has_many :rackets, dependent: :destroy
  validates :name, presence: true, length: { maximum: 20}
  validates :maker_id, presence: true
end
