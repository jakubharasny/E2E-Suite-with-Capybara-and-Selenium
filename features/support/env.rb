require 'selenium/webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'chromedriver-helper'

require 'pry'

Capybara::Selenium::Driver.new(
  browser: :chrome,
  options: ["--window-size=1680,1050",
    "--no-sandbox",
    "--incognito"]
)