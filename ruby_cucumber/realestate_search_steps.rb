# this script performs a property search 
# matching a specific criteria (Richmond, VIC, flat, $500,000)
require "rubygems"
require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading realestate URL
Given (/^I'm at the search page$/) do
	driver.navigate.to "http://www.realestate.com.au"
	SearchButton1 = driver.find_element(:id, "where")
end

When (/^I search for richmond vic property$/) do
	SearchButton = driver.find_element(:id, "where")
	SearchButton.send_keys "Richmond, VIC"
	driver.select("id=maxPrice", "500,000")
	sleep 4
end

Then (/^I should see results$/) do
	Search1Button = driver.find_element(:id, "searchBtn")
	Search1Button.click
	#verify the search result matches
	Search1Button = driver.find_element(:id, "suburbLink")
	Search1Button = driver.find_element(:text, "Richmond")
end


