require "json"
require "rest-client"
require "onlinepay/config"
require "onlinepay/version"
require "onlinepay/api_resource"
require "onlinepay/payments"

module Onlinepay

  @api_base = "https://business.sandbox.onlinepay.com"
  @api_key = "846033ed8492b96ca457"

  class << self
    attr_accessor :api_base, :api_key
  end
end
