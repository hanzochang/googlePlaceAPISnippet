class Poi
  attr_reader :name, :address, :image_urls, :type
  attr_accessor :name, :address, :image_urls, :type

  def initialize(name)
    @name = name
  end
end
