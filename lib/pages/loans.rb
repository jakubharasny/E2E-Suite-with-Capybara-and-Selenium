# frozen_string_literal: true

require 'site_prism'

#  See your personalised loan rates page
class Loans < SitePrism::Page
  elements :loan_value, 'input#input-amount'
  elements :loan_option, 'liQIcV'
  elements :get_loan_rates, '.sc-bZQynM', text: 'Get my personalised rates'
end
