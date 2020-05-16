require 'rails_helper'

feature 'Visit home to see offers' do
  scenario 'see the current offers' do
    offer1 = create(:offer)
    offer2 = create(:offer, :disabled)
    visit home_path

    expect(page).to have_css('h1', text: offer1.advertiser_name)
    expect(page).not_to have_css('h1', text: offer2.advertiser_name)
  end

  scenario 'see the premium offers' do
    offer1 = create(:offer, :offer_premium)
    create(:offer)
    visit home_path
    expect(page).to have_css('p', text: 'Premium')
  end
end