class Tag < ApplicationRecord
    
    has_many :post_tags
    has_many :posts, :through => :post_tags

    validates :name, presence: { message: "is missing! Please fill it in" }
    validates :name, uniqueness: { message: "has already been taken" }

end