<<<<<<< HEAD
load 'lib/app/get_url.rb'
load 'lib/app/scraper.rb'
=======
>>>>>>> d5be93983581d134f5f7c024852674ac303fefb4
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
load "lib/app/townhalls_scrapper.rb"
load "lib/views/index.rb"
load "lib/views/done.rb"
