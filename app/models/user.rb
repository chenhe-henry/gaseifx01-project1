class User < ApplicationRecord
    include Gravtastic
    gravtastic
    has_secure_password
    
    # validates should exist in each line
    validates :name, presence: true
    validates :email, presence: true    
    # validates :password, length: {minimum: 6}
    # attr_accessible :email, :password, :password_confirmation
    # validates_uniqueness_of :email
    has_many :body
    has_one_attached :avatar


    
end
