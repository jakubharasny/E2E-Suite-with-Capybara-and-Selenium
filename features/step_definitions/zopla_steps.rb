# frozen_string_literal: true
require 'faker'

Given 'I open Zopa website' do
  @home_page = Homepage.new
  @home_page.load
end

Given 'I start new loan application' do
  @home_page.loans_btn.click
  @loans_page = Loans.new
  @loans_page.loan_value.first.set(rand(1..25000))
  @loans_page.loan_option(text: "#{rand(1..5)} year").first
  @loans_page.get_loan_rates.first.click
end

Given 'I input necessary information for the form to get a qoute' do
  @form = Form.new
  binding.pry
  @form.loan_reason.asset[rand(0..3)].click
  @form.email.set(Faker::Internet.email)
  @form.user_title.title_checkbox[rand(0..3)].click
  @form.first_name.set(Faker::Name.first_name)
  @form.last_name.set(Faker::Name.last_name)
  
  date = Faker::Date.in_date_period(year: rand(1900..2002), month: rand(1..12))
  @form.date_of_birth.day.set(date.day)
  @form.date_of_birth.month.set(date.month)
  @form.date_of_birth.year.set(date.year)

  @form.phone.set(Faker::PhoneNumber.cell_phone)
  # Probably better constrains should be implemented for phone number
  # Faker gem might not be enough
  @form.employment.employment_checkbox[rand(0..7)].click
  @form.income.set(15000..200000)
  @form.know_home_section.know_home_section[rand(0..3)].click
end

