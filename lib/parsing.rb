class Parser
  attr_reader :data

  def initialize(filename = 'webserver.log')
      @data = File.read(filename)
  end

end
