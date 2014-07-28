#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

class ImgFixer

	def initialize (html_file_path, root_uri)
		@file = html_file_path
		@uri = root_uri
	end

	def fix_uri
		begin
			doc = Nokogiri::HTML(open(@file.to_s))
			source = File.open(@file.to_s, "w")
		rescue
			puts "error_file"
		else
			doc.css('img').each do |i|
				path = i.get_attribute('src')				
				unless path.start_with?("data:image")
					i.set_attribute('src', "#{@uri.to_s}/#{path}")	
				end
			end

			source.puts doc.to_html
			puts 'ok'
		end

	end

end

if ARGV.length < 2
	puts 'error_2_params_expected'

elsif ['-h', '--help'].include?ARGV[0]
	puts 'USAGE: ./fix_img_uri.rb  file_path  root_uri'

else
	i = ImgFixer.new(ARGV[0], ARGV[1])
	i.fix_uri
end