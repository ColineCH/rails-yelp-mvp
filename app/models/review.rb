class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true, allow_blank: false
  validates :rating, inclusion: { in: (0..5).to_a, :message => "choose a rating between 0 and 5"}
  validates :rating, :numericality => {:only_integer => true}
end
