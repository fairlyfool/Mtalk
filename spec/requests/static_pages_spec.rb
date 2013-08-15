require 'spec_helper'

describe "StaticPages" do
  
  
  describe "Home page" do
    # Tests for Head
    it "should have the content 'Static Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Static Home')
    end
    
    # Tests for Title
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Fairlyfool - Home")
    end
  
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Fairlyfool - Help")
    end
  end
    
  describe "About page" do
    it "should have the content 'Static About'" do
      visit '/static_pages/about'
      expect(page).to have_content('Static About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Fairlyfool - About")
    end
  end
  
  
end

