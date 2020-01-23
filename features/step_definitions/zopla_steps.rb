# frozen_string_literal: true
require 'faker'

Given 'I open Zopa website' do
  @home_page = Homepage.new
  @home_page.load
end

Given 'I start new loan application' do
  @home_page.loans_btn.click
  @loans_page = Loans.new
  binding.pry
  @loans_page.loan_value.first.set(rand(1..25000))
  @loans_page.loan_option(text: "#{rand(1..5)} year").first
  @loans_page.get_loan_rates.first.click
end

Given 'I input necessary information for the form to get a qoute' do
  # For now added few nasty sleeps but is not enough yet as some steps are flaky which is I believe
  # caused by page validation, need to investigate this further to create a workaround for this issue

  @form = Form.new
  @form.loan_reason.asset[rand(0..3)].click
  @form.email.set(Faker::Internet.email)
  @form.user_title.title_checkbox[rand(0..3)].click
  @form.first_name.set(Faker::Name.first_name)
  @form.last_name.set(Faker::Name.last_name)
  
  date = Faker::Date.in_date_period(year: rand(1900..2000), month: rand(1..12))
  @form.date_of_birth.day.set(date.day)
  @form.date_of_birth.month.set(date.month)
  @form.date_of_birth.year.set(date.year)

  # Faker gem and his method `Faker::PhoneNumber.cell_phone` seems not be enough 
  # for this case, for now generats some of the available numbers
  @form.phone.set("0#{rand(7000000000..7999999999)}")
  
  sleep 1
  @form.employment.employment_checkbox[rand(0..7)].click
  sleep 1
  @form.employment.employment_checkbox[rand(0..7)].click
  @form.income.set(rand(15000..200000))
  @form.know_home_section.know_home_section[rand(0..3)].click
  sleep 1
  @form.rent.set(rand(500..2000))

  #Below just an example of the postcode, doesn't include every correct possible combination
  # random letter
  def l 
    alphabet = ('a'..'z').to_a
    alphabet[rand(0..25)]
  end

  # random number
  def n
    rand(0..9)
  end

  @form.postcode.set("#{l}#{l}#{n}#{l}#{n}#{l}#{l}")
  
  # Uncommend it if you want capybara to take screenshot after the test finish.
  # Capybara::Screenshot.screenshot_and_save_page
end

