# encoding: utf-8


require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the h1 'Charon Bestattungen'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Charon Bestattungen')
    end
    it "should have the title 'Charon Bestattungen'" do
    visit '/static_pages/home'
    page.should have_selector('title',
                    :text => "Charon Bestattungen | Home")
    end
  end
  
  describe "Contact page" do

    it "should have the h1 'Kontakt'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Kontakt')
    end
    it "should have the title 'Kontakt'" do
    visit '/static_pages/contact'
    page.should have_selector('title',
                    :text => "Charon Bestattungen | Kontakt")
    end
  end
   
  describe "About page" do

    it "should have the h1 'Über uns'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text =>'Über uns')
    end
    it "should have the title 'Über uns'" do
    visit '/static_pages/about'
    page.should have_selector('title',
                    :text => "Charon Bestattungen | Über uns")
    end
  end
  
end
