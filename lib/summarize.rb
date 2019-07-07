class Summarize

  def collect(data)
    url = []
    data.each { |urls| url << urls[:url].to_s }
    collection_of_urls = url.group_by { |urls| urls }
  end

  def summarize(url)
    summary = []
    url.each do |name, nr|
      summary << [name, nr.count]
    end
    return summary.sort_by {|nr_of_views| nr_of_views[1]}.reverse
  end

end
