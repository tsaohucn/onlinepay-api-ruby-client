module Onlinepay
  module Config
    module ClassMethod
      def domain
        "#{Onlinepay.api_base}/api/v1/#{self.name.split('::').last.downcase}"
      end      
    end

    def self.included(base)
      base.extend(Config)
      base.extend(ClassMethod)
    end

    private

    def domain
      "#{Onlinepay.api_base}/api/v1/#{self.class.name.split('::').last.downcase}"
    end

    def authorize
      Onlinepay.api_key
    end

    def bearer_authorize
      "Bearer #{authorize}"
    end

  end
end
