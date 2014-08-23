require 'spec_helper'
require 'capybara'


describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup page" do
    before { visit '/signup' }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end