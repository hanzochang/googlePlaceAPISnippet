module GooglePlaceApi
  class Photo
    def self.find_url_by(text)
      place_search = GooglePlaceApi::Search::Place.new(text)

      image_urls = place_search.photo_references.map do |photo_reference|
        puts photo_reference
        image_search = GooglePlaceApi::Search::Photo.new(maxwidth: 1200, photoreference: photo_reference)
        puts image_search.image_url
        image_search.image_url
      end

      image_urls
    rescue => e
      puts e
    end
  end
end
