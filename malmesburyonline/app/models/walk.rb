class Walk < ApplicationRecord
    validates :name,         length: {minimum: 5,    maximum: 255}
    validates :description,  length: {minimum: 10,   maximum: 1000} 

    validates_uniqueness_of :name
    validates_uniqueness_of :description

    auto_strip_attributes :name, :description
end
