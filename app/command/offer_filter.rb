class OfferFilter
  def self.execute
    Offer.where('starts_at <= ?', Date.today)
         .order(premium: :desc)
         .select(&:status)
  end
end
