class Syukie < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :point, presence: true
  validates :image, presence: true
  validates :date, presence: true

end
