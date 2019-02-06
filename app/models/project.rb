class Project < ApplicationRecord
    validates :company, presence: true
    validates :title, presence: true
    validates :description, presence: true
    
    belongs_to :user
end