require './lib/pageview.rb'

describe 'PageView' do
   let(:data) { [{:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/about/2", :ip=>"444.701.448.104"}, {:url=>"/contact", :ip=>"184.123.665.067"}, {:url=>"/home", :ip=>"184.123.665.067"}] }

   it 'collects the url-s returns an array' do
     sum = PageView.new(data)
     collection = sum.collect_urls
     expect(collection).to be_a Hash
     expect(sum.collect_urls).to eq("/home"=>["/home", "/home"], "/contact"=>["/contact"], "/about/2"=>["/about/2"])
   end

   it 'prints the summary of page view' do
     sum = PageView.new(data)
     collection = sum.collect_urls
     expect(sum.summarize(collection)).to eq([["/home", 2], ["/contact", 1], ["/about/2", 1]])
   end

end
