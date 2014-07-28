#!/usr/bin/env ruby
require 'open-uri'

filename = ARGV.first
if filename.end_with?('.html', '.htm')
	file = open(filename, 'r')
	puts file.read
end