class User < ApplicationRecord
    has_many :comments, dependent: :nullify

    

     
end
