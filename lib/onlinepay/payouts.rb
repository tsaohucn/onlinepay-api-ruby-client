module Onlinepay
  class Payouts < APIResource

    def create(walletToken,amount,currency,orderNumber,opts={})
      # POST '/api/v1/payouts'
      params = { walletToken: walletToken, amount: amount, currency: currency, orderNumber: orderNumber }.merge(opts).to_json
      response_ = RestClient.post(payouts_domain, params, { Authorization: bearer_authorize, content_type: :json, accept: :json })
      response = JSON.parse(response_)       
    end  
  end
end