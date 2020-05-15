class HomeController < ApplicationController
  def index
    @offers = OfferFilter.execute.order(premium: :desc)
  end
end
