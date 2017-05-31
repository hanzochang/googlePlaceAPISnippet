module GooglePlaceApi
  module Util
    module HttpRequest

      protected

      def request(uri)
        uri = URI.parse(uri)

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        res = http.get(uri.request_uri)

        Hashie::Mash.new(JSON.parse(res.body))
      end
    end
  end
end
