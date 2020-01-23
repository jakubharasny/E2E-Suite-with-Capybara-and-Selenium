# frozen_string_literal: true

require 'selenium/webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'webdrivers'

require 'pry'

require_relative '../../lib/pages/homepage.rb'
require_relative '../../lib/pages/loans.rb'
require_relative '../../lib/pages/form.rb'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# def capabilities
#   Selenium::WebDriver::Remote::Capabilities.chrome(
#     "goog:chromeOptions": {
#       args: %w[ --headless
#                 --disable-gpu ]
#     }
#   )
# end

Capybara.default_driver = :selenium_chrome
