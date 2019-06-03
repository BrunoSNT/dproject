class Advertise < ApplicationRecord
  belongs_to :client
  has_one :advertise_history
end
