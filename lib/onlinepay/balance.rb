module Onlinepay
  class Balance < APIResource

    def lists(currency)
      # GET '/api/v1/balance'
      params = { params: {currency: currency}, Authorization: bearer_authorize }
      response = RestClient.get("#{Onlinepay.api_base}/api/v1/balance", params)
      response = JSON.parse(response)       
    end 
  end
end