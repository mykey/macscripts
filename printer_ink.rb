#!/usr/local/bin/ruby
# Ruby script to check ink level

require "open-uri"
require "Nokogiri"

# Load the printer's web interface and store everything in the data variable for further processing

printer_url ="http://10.96.58.251/main.asp?Lang=en-us"

data = Nokogiri::HTML(open(printer_url))

# Get the different values for ink/messages/... and store them in variables

black = data.css('tr:nth-child(3) .settingCategoryL11')
magenta = data.css('tr:nth-child(4) .settingCategoryL11')
yellow = data.css('tr:nth-child(5) .settingCategoryL11')
cyan = data.css('tr:nth-child(6) .settingCategoryL11')
#wastebottle =
#transferunit =
#fusingunit =
#roller =
#paper1 =
#paperhand =

# Display the gathered info

#puts data
puts black
puts magenta
puts yellow
puts cyan

# FUTURE periodicly store info in csv-file for charting printer usage
