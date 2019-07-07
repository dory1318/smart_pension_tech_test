require './lib/parsing.rb'
require './lib/uniqs.rb'
require './lib/summarize.rb'
require './lib/printing_result.rb'

parser = Parser.new
collection = parser.to_hash # we collect the url-ip pairs into hashes,
# so we can use the collection to summarise the page view & unique view

uniq = Uniqs.new(collection) # we load the collection so we can group them later
grouped = uniq.grouping_ips # grouping by IP address, returning only unique results

pageview = Summarize.new
uniqueview = Summarize.new
pageview_urls = pageview.collect(collection) # here we collect the original 'collection'
pageview_summary = pageview.summarize(pageview_urls)
unique_urls = uniqueview.collect(grouped) # here we collect the modified collection that was grouped to be unique
uniqueview_summary = uniqueview.summarize(unique_urls)

printing = PrintingResult.new
printing.print_views(pageview_summary, uniqueview_summary)
