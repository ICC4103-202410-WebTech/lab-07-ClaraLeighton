class User < ApplicationRecord
    has_many :posts 

    validates :name, :email, :password, presence: true
    validates :email, uniquenese:true
    validates :password, lenght: { minimun: 6}
end