class Uniqs

   attr_reader :collection_of_data

   def initialize(collection_of_data)
     @collection_of_data = collection_of_data
   end

   def grouping_ips
     ip = self.collection_of_data.group_by { |ip| ip }
     ip.keys
   end

 end
