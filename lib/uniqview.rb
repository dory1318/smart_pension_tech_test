class UniqView

   attr_reader :collection_of_data

   def initialize(collection_of_data)
     @collection_of_data = collection_of_data
   end

   def grouping
     ip = self.collection_of_data.group_by { |ip| ip }
     ip.keys
   end

 end
