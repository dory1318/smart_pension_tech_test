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

  def print_summary(page_views)
    summary = []
    page_views.each do |k, v|
      summary << [k, v.length]
      summary.sort!.reverse!
      print "The '#{k}' page had #{v.length} views.\n"
    end
    return summary
  end

end
