#features/step_definitions/realestate_steps.rb
#This script navigates through all the main header links of the 
#realestate website
#require 'realestate'
require "rubygems"
require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading realestate URL
Given (/^I'm at the main page$/) do
	driver.navigate.to "http://www.realestate.com.au"
end

#Clicking on the rent link present on the realestate home page
When (/^I click on the rent link$/) do
	RentButton  = driver.find_element(:link, "Rent")
	RentButton.click
	sleep 1
end

#Verify I'm on the actual rent page
Then (/^I should be at the rent page$/) do
	RentText = driver.find_element(:id, "rent")
end
	
	
#Clicking on the invest link present on the realestate home page
When (/^I click on the invest link$/) do
	InvestButton  = driver.find_element(:link, "Invest")
	InvestButton.click
	sleep 2
end

#verify I"m on the actual invest page
Then (/^I should be at the invest page$/) do
	InvestText = driver.find_element(:id, "invest")
end


#Clicking on the sold link present on the realestate home page
When (/^I click on the sold link$/) do
	SoldButton  = driver.find_element(:link, "Sold")
	SoldButton.click
	sleep 4
end

#verify I'm on the actual sold page
Then (/^I should be at the sold page$/) do
	SoldText = driver.find_element(:id, "sold")
end


#Clicking on the share link present on the realestate home page
When (/^I click on the share link$/) do
	ShareButton  = driver.find_element(:link, "Share")
	ShareButton.click
	sleep 2
end

#verify I'm on the actual share page
Then (/^I should be at the share page$/) do
	ShareText = driver.find_element(:id, "share")
end

#Clicking on the New homes link present on the realestate home page
When (/^I click on the new homes link$/) do
	NewHomeButton  = driver.find_element(:link, "New homes")
	NewHomeButton.click
	sleep 2
end

#verify I'm on the actual new homes page
Then (/^I should be at the new homes page$/) do
	HomesText = driver.find_element(:id, "new homes")
end

#Clicking on the retire link present on the realestate home page
When (/^I click on the retire link$/) do
	RetireButton  = driver.find_element(:link, "Retire")
	RetireButton.click
	sleep 2
end

#verify I'm on the actual retire page
Then (/^I should be at the retire page$/) do
	RetireText = driver.find_element(:id, "retire")
end

#Clicking on the find agents link present on the realestate home page
When (/^I click on the find agents link$/) do
	FindAgentsButton  = driver.find_element(:link, "Find agents")
	FindAgentsButton.click
	sleep 2
end

#verify I'm on the actual agents page
Then (/^I should be at the find agents page$/) do
	AgentsText = driver.find_element(:id, "find agents")
end

	
#Clicking on the Home ideas link present on the realestate home page
When (/^I click on the home ideas link$/) do
	HomeIdeasButton  = driver.find_element(:link, "Home ideas")
	HomeIdeasButton.click
	sleep 1
end

#verify I'm on the actual home ideas page
Then (/^I should be at the home ideas page$/) do
	HomeText = driver.find_element(:id, "home ideas")
end
	
	
#Clicking on the blog link present on the realestate home page
When (/^I click on the blog link$/) do
	BlogButton  = driver.find_element(:link, "Blog")
	BlogButton.click
	sleep 2
end

#verify I'm on the actual blog page
Then (/^I should be at the blog page$/) do
	BlogText = driver.find_element(:id, "blog")
end

#Clicking on the commercial link present on the realestate home page
When (/^I click on the commercial link$/) do
	CommercialButton  = driver.find_element(:link, "Commercial")
	CommercialButton.click
	sleep 2
end

#verify I'm on the actual commercial page
Then (/^I should be at the commercial page$/) do
	CommercialText = driver.find_element(:id, "commercial")
end


#Clicking on the sign in link present on the realestate home page
When (/^I click on the sign in link$/) do
	SignInButton  = driver.find_element(:link, "Sign In")
	SignInButton.click
	sleep 5
end

#verify I'm at the actual sign in page
Then (/^I should be at the sign in page$/) do
	SignText = driver.find_element(:id, "sign in")
	driver.navigate.to "http://www.realestate.com.au"
	sleep 5
end

	
#Clicking on the Join link present on the realestate home page
When (/^I click on the join link$/) do
	JoinButton  = driver.find_element(:link, "Join")
	JoinButton.click
	sleep 5
end

#verify Im at the actual join page
Then (/^I should be at the join page$/) do
	JoinText = driver.find_element(:id, "join")
	driver.navigate.to "http://www.realestate.com.au"
	sleep 5
end

	
#Clicking on the buy link (landing page) present on the realestate home page
When (/^I click on the landing page$/) do
	LandingPageButton  = driver.find_element(:link, "Buy")
	LandingPageButton.click
	sleep 2
end

#verify I'm at the actual landing page
Then (/^I should be at the buy page$/) do
	BuyText = driver.find_element(:id, "buy")
end

