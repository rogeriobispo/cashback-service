class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    offer = Offer.new(offers_params)
    if offer.save
      redirect_to admin_home_path, flash: { success: 'Offer created successefully' }
    else
      redirect_to new_offer_path, flash: { danger: 'You must fill fileds with *' }
    end
  end

  private

  def offers_params
    params.require(:offer).permit(:advertiser_name,
                                  :url,
                                  :description,
                                  :starts_at,
                                  :ends_at,
                                  :premium)
  end
end
