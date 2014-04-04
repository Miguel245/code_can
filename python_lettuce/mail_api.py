#This python/lettuce script, launches firefox browser at the target
#site and opens the mail api to enter all the required values in 
#order to send email successfully. 
#from lettuce import *
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Firefox()
driver.get("http://sendgrid.com/docs/api_workshop.html")

time.sleep(5)

# Click Mail link to expand Mail properties
@step('I am at the mail api')
def at_the_mail_api(step):
	mailprop = driver.find_elements_by_xpath("//html/body/div/ul/li[6]/h3/div").click()

#Enter Parameter values 
# value for: to (recipient)
@step('I enter mail properties')
def enter_mail_properties(step):
	mailprop = driver.find_element_by_name("params[to]")
	mailprop.send_keys("tester245@gmail.com")
	#value for: toname
	mailprop = driver.find_element_by_name("params[toname]")
	mailprop.send_keys("Joe")
	#value for: x-smtpapi
	mailprop = driver.find_element_by_name("params[x-smtpapi]")
	mailprop.send_keys("'content-type': 'application/json'")
	#value for: from
	mailprop = driver.find_element_by_name("params[from]")
	mailprop.send_keys("miguel245.moreno@gmail.com")
	#value for: fromname
	mailprop = driver.find_element_by_name("params[fromname]")
	mailprop.send_keys("Miguel")
	#value for: subject
	mailprop = driver.find_element_by_name("params[subject]")
	mailprop.send_keys("Soccer practice")
	#value for: text
	mailprop = driver.find_element_by_name("params[text]")
	mailprop.send_keys("Soccer camp and practice have been moved to the west park")
	#value for: html
	mailprop = driver.find_element_by_name("params[html]")
	mailprop.send_keys("<param name=autoplay value=true")
	#value for: bcc
	mailprop = driver.find_element_by_name("params[bcc]")
	mailprop.send_keys("alex_morgan@gmail.com")
	#value for: date
	mailprop = driver.find_element_by_name("params[date]")
	mailprop.send_keys("Thur,04 April 2014 08:00:00 GMT")
	#value for: headers
	mailprop = driver.find_element_by_name("params[headers]")
	mailprop.send_keys("application/json")

#click 'Try it' button
@step('I can send mail')
def can_send_mail(step):
	mailprop.driver.find_element_by_link_id("Mail").click()

time.sleep(5)

driver.close()