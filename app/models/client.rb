class Client < ApplicationRecord
    has_many :categorizations
    has_many :categories, through: :categorizations
    has_one  :advertise
    has_one  :advertise_history, through: :advertise
    has_one  :address
    has_many :reviews
    has_one  :official_review
end
