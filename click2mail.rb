require 'rubygems'
require 'watir-webdriver'
require 'nokogiri'

amount = "10.00" #10.00 minimum, no dollar signs please.
username = "" #click2mail username
password = "" #click2mail username
cc_number = "" #cc number in without dashes or spaces
cc_type = "" #American Express, Visa, etc. This needs to match exactly with the Click2Mail drop down.
cc_exp = "" #03 - March or similar. This needs to match exactly with the Click2Mail drop down.
cc_year = "" #2013 or similar. This needs to match exactly with the Click2Mail drop down.
cc_cvv = "" #3-4 digit cvv (the number on the back)
first_name = "" 
last_name = ""
bill_address1 = ""
bill_address2 = "" #if you don't have one, just leave it blank
bill_city = ""
bill_zip_code = ""
bill_state = "" #Texas or similar. This needs to match exactly with the Click2Mail drop down.
        
browser = Watir::Browser.new :firefox #:chrome would work too, :ie untested
browser.goto("http://www.click2mail.com/")
browser.link(:id, "login_con").click
browser.text_field(:id, "email").set(username)
browser.text_field(:id, "signin_password").set(password)
browser.button(:id => "signin_signin").click
browser.link(:text, "My Account").click
browser.link(:text, "Buy Credit").click
browser.text_field(:name, "creditamount").when_present.set(amount)
browser.text_field(:id, "_authorizenet_cc_number").set(cc_number)
browser.select_list(:id, "_authorizenet_cc_type").select(cc_type)
browser.select_list(:id, "_authorizenet_expiration").select(cc_exp)
browser.select_list(:id, "_authorizenet_expiration_yr").select(cc_year)
browser.text_field(:id, "_authorizenet_cc_cid").set(cc_cvv)
browser.text_field(:id, "customer_firstname").set(first_name)
browser.text_field(:id, "customer_lastname").set(last_name)
browser.text_field(:id, "street_1").set(bill_address1)
browser.text_field(:id, "street_2").set(bill_address2)
browser.text_field(:id, "city").set(bill_city)
browser.text_field(:id, "postcode").set(bill_zip_code)
browser.select_list(:id, "uc_state").select(bill_state)
browser.form(:name, "chkbuyusercredit").submit
browser.close

puts "You have purchased #{amount} of credit from Click2Mail.com."
