#!/usr/bin/ruby
require 'rubygems' #in a Rails project you won't need this line
require 'mush'

script_name=File.basename(__FILE__)
long_url=ARGV[0] || abort("syntax: #{script_name} long_url")

###################################
# use bitley provider
####################################
#bitly = Mush::Services::Bitly.new
#bitly.login = "o_6vj8nam1vu"
#bitly.apikey = "R_06e00d33d89e4cde8cc21fcff3c34770"
#bitley_s_url=bitly.shorten "#{long_url}"
#puts "Your bitley short curl is #{bitley_s_url}"

####################################
# use isgd provider
####################################
isgd = Mush::Services::IsGd.new
isgd_s_url=isgd.shorten "#{long_url}"
puts "Your ISGD short curl is #{isgd_s_url}"
