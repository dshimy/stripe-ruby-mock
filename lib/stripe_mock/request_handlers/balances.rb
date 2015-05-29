module StripeMock
  module RequestHandlers
    module Balances

      def Balances.included(klass)
        klass.add_handler 'get /v1/balance/history/(.*)', :get_balance
      end

      def get_balance(route, method_url, params, headers)
        Data.mock_balance
      end

    end
  end
end
