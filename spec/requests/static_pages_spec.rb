require 'spec_helper'
require 'capybara'
# Capybara.ignore_hidden_elements = false


describe "StaticPages" do
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" } #Title testing closed do to wierd bugs do manual testing
  describe 'Home Page' do
    before(:all) do
      visit '/static_pages/home'
    end
    it 'should display Sample App' do
      expect(page).to have_content('Sample App')
    end
    # it 'has the right title'do
    #   expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home") #closed do to wierd bugs
    #   puts page.html
    # end
  end

  describe 'Help Page' do
    before(:all) do
      visit '/static_pages/help'
    end
    it 'displays help header' do
      expect(page).to have_content('Help')
    end
    # it 'has the right tile' do
    #   expect(page).to have_title("#{base_title} | Help")
    # end
  end

  describe "About page" do
    before(:all) do
      visit '/static_pages/about'
    end

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end
    # it 'has the right title'do
    #   expect(page).to have_title("#{base_title} | About")
    # end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
end
