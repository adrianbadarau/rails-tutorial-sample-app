require 'spec_helper'
require 'capybara'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit '/signup' }

    it { should have_content('Sign up') }

  end
end
