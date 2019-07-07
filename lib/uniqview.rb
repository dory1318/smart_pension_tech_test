class UniqView

   attr_reader :collection_of_data

   def initialize(collection_of_data)
     @collection_of_data = collection_of_data
   end

   def grouping
     ip = self.collection_of_data.group_by { |ip| ip }
     ip.keys
   end

   def collect(urls)
     url = []
     urls.each { |urls| url << urls[:url].to_s }
     collection_of_urls = url.group_by { |urls| urls }
   end

   def summing(url)
     summary = []
     url.each do |name, nr|
       summary << [name, nr.count]
     end
     return summary.sort_by {|nr_of_views| nr_of_views[1]}.reverse
   end

 end
