class Offer < ApplicationRecord
  validates :advertiser_name, :url, :description, :starts_at, presence: true

  def status
    starts_at <= Date.today && (ends_at.nil? || ends_at >= Date.today)
  end
end
