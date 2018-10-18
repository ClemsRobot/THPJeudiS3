require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Scrapper

  attr_accessor :city_link, :city_names, :city_depts, :city_emails

  attr_reader :dept1_link, :dept2_link, :dept3_link

  def initialize
    @city_link = []
    @city_names = []
    @city_depts = []
    @city_emails = []
    @dept_links = ["http://www.annuaire-des-mairies.com/seine-saint-denis.html", "http://www.annuaire-des-mairies.com/hauts-de-seine.html", "http://www.annuaire-des-mairies.com/corse-du-sud.html"]
  end


  def recup_link #Va recuperer lien des villes
    @dept_links.each do |dlink|
      page = Nokogiri::HTML(open(dlink))
      page.css('.lientxt').each do |url|
        web = "http://annuaire-des-mairies.com"
        web << url['href'][1..-1]
        @city_link << web
        @city_names << url.text # récupère le nom des villes de tout un département
      end
    end
  end


  def recup_name #Va récupérer le nom des villes par rapport à l'url
    @city_link.each do |city_url|
      recup_emails(city_url) # Boucle qui récupère toutes les adresses email des mairies des départements
      page = Nokogiri::HTML(open(city_url))
      page.css('body > div > main > section.text-center.well.well-sm > div > div > div > p.lead > a').each do |dept|
        @city_depts << dept.text
      end
    end
  end

  def recup_emails(url_array) #récupère l'adresse email via l'url
    doc = Nokogiri::HTML(open(url_array))
    doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |email|
      @city_emails << email.text
    end
  end


  def take_names #Pour retourner l'array du nom des villes
    @city_names
  end


  def take_depts #Pour retourner l'array des départements
    @city_depts
  end


  def take_emails #Pour retourner l'array des mails
    @city_emails
  end


  def perform # Pour appeler le scrapping
    puts "Attente de scrapping ne quittez pas !"
    recup_link

    recup_name
    puts "Le scrapping est maintenant terminé."
  end
end
