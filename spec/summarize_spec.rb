require './lib/summarize.rb'

describe 'Summarize' do
   let(:data) { [{:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/about/2", :ip=>"444.701.448.104"}, {:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/contact", :ip=>"184.123.665.067"}, {:url=>"/home", :ip=>"184.123.665.067"}] }

   it 'collects the url-s returns an array' do
     sum = Summarize.new
     collection = sum.collect(data)
     expect(collection).to be_a Hash
     expect(sum.collect(data)).to eq("/home"=>["/home", "/home", "/home", "/home"], "/contact"=>["/contact"], "/about/2"=>["/about/2"])
   end

   it 'returns the summary of pages' do
     sum = Summarize.new
     collection = sum.collect(data)
     expect(sum.summarize(collection)).to eq([["/home", 4], ["/contact", 1], ["/about/2", 1]])
   end

end
