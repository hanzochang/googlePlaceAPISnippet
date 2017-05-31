module HtmlBuilder
  class Builder
    attr_reader :pois

    def initialize
      @pois = []
      @html = []
    end

    def push(poi)
      @pois << poi
    end

    def start_html
      '<html><body>'
    end

    def end_html
      '</body></html>'
    end

    def build_html_from(poi)
      html = []
      html << block_builder(poi)
      html.join('')
    end

    def build_all
      @html << start_html
      @pois.each do |poi|
        @html << block_builder(poi)
      end
      @html << end_html
      @html.join('')
    end

    private

    def block_builder(poi)
      block = '<p>'
      block = block + h3_builder(poi.name)     if poi.name
      block = block + p_builder(poi.type)   if poi.type
      block = block + p_builder(poi.address)   if poi.address
      poi.image_urls.each do |image_url|
        puts image_url
        block = block + img_builder(image_url)
      end
      block = block + '</p><hr>'
      block
    end

    def h3_builder(str)
      "<h3>#{str}</h3>"
    end

    def h4_builder(str)
      "<h4>#{str}</h4>"
    end

    def h5_builder(str)
      "<h5>#{str}</h5>"
    end

    def p_builder(str)
      "<p style='font-size: 12px; color: gray;'>#{str}</p>"
    end

    def img_builder(src)
      "<img src=#{src} width=300>"
    end
  end
end
