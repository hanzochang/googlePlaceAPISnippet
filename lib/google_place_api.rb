require 'net/http'
require 'openssl'
require 'uri'
require 'open-uri'
require 'json'
require 'hashie'

Dir[File.dirname(__FILE__) + '/google_place_api/util/*.rb'].each { |file| require file }
Dir[File.dirname(__FILE__) + '/google_place_api/search/*.rb'].each { |file| require file }
Dir[File.dirname(__FILE__) + '/google_place_api/*.rb'].each { |file| require file }

module GooglePlaceApi
  API_KEY = 'YOUR KEY'
end
