require './lib/uniqs.rb'

describe 'Uniqs' do
   let(:data) { [{:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/about/2", :ip=>"444.701.448.104"}, {:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/home", :ip=>"126.318.035.038"}, {:url=>"/contact", :ip=>"184.123.665.067"}, {:url=>"/home", :ip=>"184.123.665.067"}] }

   it 'groups by matching ips, return only unique results' do
     sum = Uniqs.new(data)
     expect(sum.grouping_ips).to eq([{:ip=>"126.318.035.038", :url=>"/home"}, {:ip=>"444.701.448.104", :url=>"/about/2"}, {:ip=>"184.123.665.067", :url=>"/contact"}, {:ip=>"184.123.665.067", :url=>"/home"}])
   end

 end
