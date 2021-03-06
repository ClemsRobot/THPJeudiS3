require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

class Adding # Classe permettant d'enregister les données scrappées dans un fichier csv
  def initialize
    @csv = nil
  end
  def csv_creation
    scrap_it = Scrapper.new # instance classe scrapper
    scrap_it.perform # Lancement de la méthode perform sur l'instance de classe créée
    puts "Va etre enregistrer sur ce fichier :  \"townhall.csv\""
    @csv = CSV.open("db/townhalls.csv", "a+")
    (0..scrap_it.take_depts.length - 1).each do |x| # Boucle enregistrant les données scrappées dans le fichier csv
      @csv << [scrap_it.take_depts[x], scrap_it.take_names[x], scrap_it.take_emails[x]]
    end
    puts "Enregistrement terminée"
  end
end
