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

Index.new.launch
