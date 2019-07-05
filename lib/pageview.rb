class PageView

  attr_reader :collection_of_data

  def initialize(collection_of_data)
    @collection_of_data = collection_of_data
  end

  def collect_urls
    url = []
    self.collection_of_data.each { |urls| url << urls[:url].to_s }
    collection_of_urls = url.group_by { |urls| urls }
  end

end
