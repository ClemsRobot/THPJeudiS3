class Index
  attr_accessor :user_choice

  def initialize
    reload = nil
    @user_choice = 0


    puts "Que veux-tu faire ?"

    puts "1 pour envoyer dans fichier CSV le scrapping"
    puts "2 si tu veux prendre les twitters de toutes les mairies"
    puts "3 si tu veux envoyer un mail au maires des mairies séléctionnées"
    puts "4 si tu veux follow des maires"
    puts "Exit si tu veux quitter"

  end

  def launch
    @user_choice = gets.chomp.to_i
    reload = AppDone.new
    if @user_choice == 1 #scrapper
      @csv_ajout = Adding.new # scrapping
      @csv_ajout.csv_creation # creer un fichier csv
      puts "Terminée"
      reload.go_back
    elsif  @user_choice == 2 # lance une recherche des mairies qui disposent d'un compte twitter
      ScrapperTwitter.new.boucle
      reload.go_back # relance le fichier apres execution
    elsif  @user_choice == 3 # envoie un mail aux maires
      Mailer.new.mass_emailing
      reload.go_back # relance le fichier apres execution
    elsif  @user_choice == 4 # follow les mairies concernées par Twitter
      Follower.new.boucle
      reload.go_back # relance le fichier apres execution
    elsif  @user_choice == Exit # met fin au programme
      exit
    end
  end
end
