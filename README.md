# Capybara-Selenium

## Zopla Basic setup for testing framework using capybara with selenium 

For now I have setup this framework with ruby. Didn't have any confirming reply from the agent but he said that shouldn't be a problem if I setup framework in preferred language. I could do it in Java or Python but then it will definitely not be few hours task. Had to do research, check some libraries, even which framework should I choose and at least learn a basic syntax of those two languages. If that is required then I can start digging in through the weekend when I will have extra time. 


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
- 'site_prism' (allows to use pageObject model => all the selectors are stored in ./lib/pages)

- 'pry' (great for debugging e.g. add `binding.pry` wherever you want the test to stop and debug)

- 'faker' ( fake/random data generator )

# Config
Basic configuration is stored in `./features/support/env.rb`
For now if you want to use head or headless mode, just change `Capybara.default_driver` (line 28) to `selenium_chrome` or `selenium_chrome_headless`

# Test
Scenario `./features/journeys/zopla_loan.feature`
Steps    `./features/step_definitions/zopla_steps.rb`


