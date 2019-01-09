class Project < ApplicationRecord
    validates :company, presence: true
    validates :title, presence: true
    validates :description, presence: true
end