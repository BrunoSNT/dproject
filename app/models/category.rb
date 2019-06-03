class Category < ApplicationRecord
    has_many :categorizations
    has_many :clients, through: :categorizations
end
