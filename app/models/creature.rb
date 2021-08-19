class Creature < ApplicationRecord
  has_one_attached :profile_pic
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
