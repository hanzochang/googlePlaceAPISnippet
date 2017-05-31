module GooglePlaceApi
  module Util
    module UrlGenerator

      protected

      def url_generate(base, options = {})
        URI::encode(base + options.map { |k, v| "#{k}=#{v}" }.join('&') + '&key=' + API_KEY)
      end
    end
  end
end
