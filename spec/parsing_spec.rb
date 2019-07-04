require './lib/parsing.rb'

describe 'Parsing' do

  let(:data) { "/home 126.318.035.038\n/contact 184.123.665.067\n/home 184.123.665.067\n/about/2 444.701.448.104" }

  it 'reads the log file' do
      allow(File).to receive(:read) { data }
      parser = Parser.new(filename = './log_for_testing.log')
      expect(parser.data).to eq data
    end

  it 'convert data into hashes' do
      allow(File).to receive(:read) { data }
      parser = Parser.new(filename = './log_for_testing.log')
      expect(parser.to_hash[1]).to be_a Hash
    end
  end
