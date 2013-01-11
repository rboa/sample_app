require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
  	it "should have content 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', text: 'Sample App')
 		#page.should have_content('Sample App')
 	end
 	it "should have the right title" do
  		page.should have_selector('title',
 							text: 'RoR Sample | Home')
  	end
  end

  describe "Help page" do
  	it "should have content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', text: 'Help')
	end
 	it "should have the right title" do
		page.should have_selector('title',
 							text: 'RoR Sample | Home')
  	end
  end


  describe "About page" do
  	it "should have content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', text: 'About Us')
	end
 	it "should have the right title" do
		page.should have_selector('title',
 							text: 'RoR Sample | Home')
  	end
  end

end
