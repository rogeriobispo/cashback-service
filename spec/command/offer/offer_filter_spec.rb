require 'rails_helper'

RSpec.describe OfferFilter, type: :model do
  describe 'filter enabled offers' do
    it 'should return only offer that is started' do
      create(:offer)
      create(:offer)
      create(:offer, starts_at: Date.yesterday)
      create(:offer, :disabled )
      offers = OfferFilter.execute
      expect(offers.count).to eq(3)
    end

    it 'should return the offers that there is no deadline' do
      offer = create(:offer, starts_at: Date.yesterday, ends_at: nil)
      create(:offer, :disabled )
      offers = OfferFilter.execute
      expect(offers.count).to eq(1)
      expect(offers.first.id).to eq(offer.id)
    end

    it 'should not return the future offers' do
      create(:offer, :future)
      offers = OfferFilter.execute
      expect(offers.count).to eq(0)
    end
  end
end
