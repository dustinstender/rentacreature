class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :creature_id
end
