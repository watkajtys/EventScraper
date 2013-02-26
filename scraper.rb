require 'nokogiri'
require 'open-uri'

url = "http://www.lula.ca/special-events/event-calendar.html"
data = Nokogiri::HTML(open(url))
events = data.css('.calendarevent')

events.each do |event|
	puts event.at_css('.date').text
	puts event.at_css('.title').text.strip
	puts event.at_css('.introtext').text.strip
	puts ""
end