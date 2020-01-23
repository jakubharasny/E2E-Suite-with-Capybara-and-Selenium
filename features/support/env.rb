# frozen_string_literal: true

require 'selenium/webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'webdrivers'

require 'capybara-screenshot/cucumber'
require 'pry'

require_relative '../../lib/pages/homepage.rb'
require_relative '../../lib/pages/loans.rb'
require_relative '../../lib/pages/form.rb'

# Creates a screenshot of failure and save it in below path
Capybara::Screenshot.autosave_on_failure = true
Capybara.save_path = "./screenshots"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :selenium_chrome_headless

