class Walk < ApplicationRecord
    validates :name,         length: {minimum: 5,    maximum: 255},     allow_nil: false
    validates :description,  length: {minimum: 10,   maximum: 1000},    allow_nil: false 

    validates_uniqueness_of :name, :description
    auto_strip_attributes   :name, :description

    has_many :walk_sections
end
