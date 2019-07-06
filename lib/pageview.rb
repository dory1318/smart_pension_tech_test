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

  def summarize(url)
    summary = []
    url.each do |name, nr|
      summary << [name, nr.count]
    end
    return summary.sort_by {|nr_of_views| nr_of_views[1]}.reverse
  end

  def print_pageview(views)
  views.each do |name, nr_of_views|
   print "The '#{name}' page had #{nr_of_views} views.\n"
   end
  end

  end
