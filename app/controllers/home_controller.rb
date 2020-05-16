class HomeController < ApplicationController
  skip_before_action :authenticated
  def index
    @offers = OfferFilter.execute
  end
end
