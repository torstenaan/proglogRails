class Type < ApplicationRecord
    has_many :activities

    validates :name, presence: true
end
