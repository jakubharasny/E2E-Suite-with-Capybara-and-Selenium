# frozen_string_literal: true

require 'site_prism'


class ForWhat < SitePrism::Section
  elements :asset, '.sc-bZQynM'
end

class UserTitle < SitePrism::Section
  elements :title_checkbox, '.cBQNLm'
end

class Birthday < SitePrism::Section
  element :day, '#text-id-day'
  element :month, '#text-id-month'
  element :year, '#text-id-year'
end

class Employment < SitePrism::Section
  elements :employment_checkbox, '.htOShl'
end

class KnowHome < SitePrism::Section
  elements :know_home_section, '.cBQNLm'
end
#  See your personalised loan rates page
class Form < SitePrism::Page
  section :loan_reason, ForWhat, '.sc-19z3adu-0.hZpqkk', text: "What's this loan for?"
  section :user_title, UserTitle, '.sc-1adoblt-3', text: 'Title'
  section :date_of_birth, Birthday, '.cKYkHX'
  section :employment, Employment, '.sc-1adoblt-2.cqetwS', text: 'Employment status'
  section :know_home_section, KnowHome, '.sc-1adoblt-2.cqetwS', text: 'your home?'

  element :email, '#text-id-email'
  element :first_name, '#text-id-firstName'
  element :last_name, '#text-id-lastName'
  element :phone, '#text-id-phone' 
  element :income, '#text-id-annualIncome'
  element :rent, '#text-id-rent'
  element :postcode, '#text-id-postCode'
end



