module GooglePlaceApi
  module Search
    class Place
      include GooglePlaceApi::Util::UrlGenerator
      include GooglePlaceApi::Util::HttpRequest

      TEXT_SEARCH_URI = 'https://maps.googleapis.com/maps/api/place/textsearch/json?'

      def initialize(str)
        @json = request(url_generate(TEXT_SEARCH_URI, query: str))
      end

      def place_id
        @json.results[0].place_id
        # raise
      end

      # @return [Array]
      def photo_references
        @json.results[0].photos.map(&:photo_reference)
        # raise
      end
    end
  end
end
