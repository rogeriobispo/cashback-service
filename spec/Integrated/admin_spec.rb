require 'rails_helper'

feature 'Visit admin area' do
  scenario 'redirect to login page' do
    visit admin_home_path

    expect(page).to have_css('h1', text: 'Login')
    expect(page).to have_css('label', text: 'Email')
    expect(page).to have_css('label', text: 'Senha')
  end

  scenario 'login performed' do
    user = create(:user, password: '123456')
    visit admin_home_path
    fill_in 'email', with: user.email
    fill_in 'password', with: '123456'
    click_on 'Enviar'

    expect(page).not_to have_css('h1', text: 'Login')
    expect(page).to have_css('a', text: 'New Offer')
  end

  scenario 'Invalid login' do
    visit admin_home_path
    click_on 'Enviar'

    expect(page).to have_css('h1', text: 'Login')
    expect(page).not_to have_css('a', text: 'New Offer')
  end

  scenario 'logout ' do
    user = create(:user, password: '123456')
    visit admin_home_path
    fill_in 'email', with: user.email
    fill_in 'password', with: '123456'
    click_on 'Enviar'

    click_on 'Log Out'

    expect(page).to have_css('h1', text: 'Login')
    expect(page).to have_css('label', text: 'Email')
    expect(page).to have_css('label', text: 'Senha')
  end
end