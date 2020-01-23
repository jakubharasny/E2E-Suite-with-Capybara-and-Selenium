# frozen_string_literal: true

require 'site_prism'

# Zopla homepage
class Homepage < SitePrism::Page
  set_url 'https://www.zopa.com'
  element :loans_btn, '.sc-bZQynM', text: 'See your rates'
end
