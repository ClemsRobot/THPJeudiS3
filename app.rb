load 'lib/app/get_url.rb'
load 'lib/app/scraper.rb'
# frozen_string_literal: true

require 'rubygems'
require 'nokogiri'
require 'csv'
require 'dotenv'
require 'json'
require "google_drive"
require 'open-uri'
Dotenv.load("../../.env")

load "lib/app/townhalls_adder_to_db.rb"
load "lib/app/townhalls_follower.rb"
load "lib/app/townhalls_mailer.rb"
load "lib/views/index.rb"
load "lib/views/done.rb"

Index.new.launch

tab = [["https://www.annuaire-des-mairies.com/seine-saint-denis.html", 40],["https://www.annuaire-des-mairies.com/hauts-de-seine.html", 36],["http://www.annuaire-des-mairies.com/val-de-marne.html", 47]]

def perform (url, y)
  @url = url
  result = Array.new
  x = 0

  while (x < y)
     tab = Array.new
     w = x.to_f
     z = y.to_f
     pourcent = ((w / z) * 100).to_i
     lien = Get_url.new(@url, x)
     tab[x] = lien.get_url
     resultat = Scraper.new(tab[x])
     result[x] = resultat.get_info
     puts "#{pourcent}%"
     x = x + 1
   end
   puts "100%"
   return result
end

k = 0
resultat = Array.new
while (k < 3)
  puts "Travail en cours, #{k + 1}/3"
  resultat[k] = perform(tab[k][0], tab[k][1])
  k = k + 1
end
puts resultat
transfo_to_csv
