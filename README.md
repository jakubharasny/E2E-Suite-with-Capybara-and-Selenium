# Example of E2E suite using Capybara, Selenium and Siteprism as basic

Example of a E2E framework with selenium written in ruby. Example scenario is written for Zopla website. Some steps are still flaky or need better libraries or custom code to validate or the input. The main reason was to create a simple E2E framework using capybara, cucumber and siteprism ( A Page Object Model DSL for Capybara )

# Setup
Make sure you have installed ruby on your system (if you are using mac ruby should be already included, for the linux distros and Windows extra setup must be required)
1. You can e.g. use homebrew if you need ruby: `brew install ruby`
2. install bundler `gem install bundler`
3. get all the dependences `bundle install`

4. to simple run the suite => `cucumber`

# About the suite
The framework use capybara empowered with selenium, cucumber and webdrivers gem (this setup use only chrome but the gem contains also setup for firefox, edge, ie)

All dependences are stored in Gemfile
initial setup
- 'capybara'
- 'cucumber'
- 'selenium-webdriver'
- 'webdrivers'

and also:

- capybara-screenshot/cucumber ) useful tool. It takes screenshot on failure and save in your choosen path or for example takes a screenshot after test finish. 

- 'site_prism' (allows to use pageObject model => all the selectors are stored in ./lib/pages)

- 'pry' (great for debugging e.g. add `binding.pry` wherever you want the test to stop and debug)

- 'faker' ( fake/random data generator )

# Config
Basic configuration is stored in `./features/support/env.rb`
For now if you want to use head or headless mode, just change `Capybara.default_driver` (line 28) to `selenium_chrome` or `selenium_chrome_headless`

# Test
Scenario `./features/journeys/zopla_loan.feature`
Steps    `./features/step_definitions/zopla_steps.rb`

Few vailidation need improvement and also some steps are flaky ( more in the steps ).
