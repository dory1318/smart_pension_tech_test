require './lib/parsing.rb'

describe 'Parsing' do
  it 'has a to_hash method that takes the log as arg' do
    parse= Parsing.new
    parse.to_hash('/home 184.123.665.067')
  end
end
