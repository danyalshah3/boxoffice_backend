class User < ApplicationRecord
    has_secure_password
    has_many :transations
    has_many :movies, through: :transations

    validates :name, :creditcardnum, presence: true
    validates :name, :username, uniqueness: true
    
    validate :password_requirements_are_met

    
     private 
 
     def password_requirements_are_met
         rules = {
           " must contain at least one lowercase letter"  => /[a-z]+/,
           " must contain at least one uppercase letter"  => /[A-Z]+/,
           " must contain at least one digit"             => /\d+/,
           " must contain at least one special character" => /[^A-Za-z0-9]+/
         }
       
         rules.each do |message, regex|
           errors.add( :password, message ) unless password.match( regex )
         end
       end
end
