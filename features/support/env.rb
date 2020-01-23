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

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara::Screenshot.autosave_on_failure = false
Capybara.default_driver = :selenium_chrome

