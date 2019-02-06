class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    
    has_many :projects, dependent: :destroy
    has_many :details, dependent: :destroy
    
    has_secure_password
    
end