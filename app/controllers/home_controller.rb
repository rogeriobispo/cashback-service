class HomeController < ApplicationController
  def index
    @offers = Offer.all.order(premium: :desc)
  end
end
