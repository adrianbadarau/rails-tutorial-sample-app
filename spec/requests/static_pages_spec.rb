require 'spec_helper'

describe "StaticPages" do
  describe 'Home Page' do
    before(:all) do
      visit '/static_pages/home'
    end
    it 'should display Sample App' do
      expect(page).to have_content('Sample App')
    end
    it 'has the right title'do
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe 'Help Page' do
    before(:all) do
      visit '/static_pages/help'
    end
    it 'displays help header' do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    before(:all) do
      visit '/static_pages/about'
    end

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
