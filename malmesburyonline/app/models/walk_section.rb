class WalkSection < ApplicationRecord
  belongs_to :walk

  has_many :sectin_button, foreign_key: "next_walk_section_id"
  has_many :sectin_button, foreign_key: "walk_section_id"

  validates :image,  length: {minimum: 10,  maximum: 1000}, allow_nil: false
  validates :description,  length: {minimum: 5,   maximum: 200},  allow_nil: false

  auto_strip_attributes :image, :description

end
