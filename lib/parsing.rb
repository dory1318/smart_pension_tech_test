class Parser
  attr_reader :data

  def initialize(filename = 'webserver.log')
      @data = File.read(filename)
  end

  def to_hash
    array_of_log_data = self.data.split(/\n/)
    collection_of_hash = []
    array_of_log_data.each do |line|
    url, ip = line.split(' ')
    collection_of_hash << {url: url, ip: ip}
    end
    return collection_of_hash
  end

end
