require_relative "../lib/lastbonsaipage/version"
require_relative "../lib/lastbonsaipage/scraper.rb"
require_relative "../lib/lastbonsaipage/cli.rb"
require_relative "../lib/lastbonsaipage/bonsaiscrape.rb"


require 'nokogiri'
require 'pry'
require 'open-uri'

module Lastbonsaipage
  class Error < StandardError; end
  # Your code goes here...
end
