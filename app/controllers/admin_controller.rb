class AdminController < ApplicationController
  def index
    @offers = Offer.all
  end
end
