module Onlinepay
  class Payments < APIResource

    attr_reader :token, :processingUrl, :amount, :currency, :status

    def initialize(product,amount,currency,opts={})
      # POST '/api/v1/payments
      params = { product: product, amount: amount, currency: currency }.merge(opts).to_json
      _response = RestClient.post(domain, params, { Authorization: bearer_authorize, content_type: :json, accept: :json })
      response = JSON.parse(_response)  
      @token = response["token"] 
      @processingUrl = response["processingUrl"] 
      @amount = response["payment"]["amount"]
      @currency = response["payment"]["currency"] 
      @status = response["payment"]["status"]  
    end

    def show
      # GET '/api/v1/payments/[payment_token]'
      params = { params: {}, Authorization: bearer_authorize }
      _response = RestClient.get("#{domain}/#{@token}", params)
      response = JSON.parse(_response)       
    end

    class << self

      def lists(date_from: nil, date_to: nil, page: nil, per_page: nil, operation_type: nil)
        # GET '/api/v1/payments'
        _page = ( page.is_a? Integer ) ? page : 1
        params = { params: { date_from: date_from, date_to: date_to, page: _page, per_page: per_page ||= 20, operation_type: operation_type }, Authorization: bearer_authorize }
        _response = RestClient.get(domain, params)
        response = JSON.parse(_response)
      end

    end
  
  end
end