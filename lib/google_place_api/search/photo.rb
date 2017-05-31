module GooglePlaceApi
  module Search
    class Photo
      include GooglePlaceApi::Util::UrlGenerator
      include GooglePlaceApi::Util::HttpRequest

      attr_reader :image_url

      PHOTO_URI = 'https://maps.googleapis.com/maps/api/place/photo?'

      # @param  [Hash] options
      #   @option [String] photoreference
      #   @option [String] maxwidth
      # @return [String]
      def initialize(options = {})
        @image_url = url_generate(PHOTO_URI, options)
      end

      # def image_url
        # # image_exists? ? @image_url : ''
      # end

      private

      def image_exists?
        request(@image_url)
      end
    end
  end
end
