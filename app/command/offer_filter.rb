class OfferFilter
  def self.execute
    Offer.where("starts_at <= ? and (ends_at ISNULL or ends_at >= ? )", Date.today, Date.today)
         .order(premium: :desc)
  end
end
