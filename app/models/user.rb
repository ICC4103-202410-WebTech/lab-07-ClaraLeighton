class User < ApplicationRecord
    has_many :posts 

    validates :name, :email, :password, presence: { message: "is missing! Please fill it in" }
    validates :email, uniqueness: { message: "is already in use" }
    validates :password, length: { minimum: 6, message: "must be at least 6 characters long" }

end