class Offer < ApplicationRecord
  validates :advertiser_name, :url, :description, :starts_at, presence: true
end
