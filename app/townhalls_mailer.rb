require 'gmail'
require 'json'


class Mailer

  def initialize
    @donnee = []
  end


  def base_de_donnee
    file = File.read('./../db/townhalls.json')
    @donnee = JSON.parse(file)
  end

  def envoie_mails
	puts "Entrer votre compte gmail :"
    print "> "
    @login = gets.chomp

    puts "Veuillez entrer votre mot de passe"
    print "> "
    @mdp = gets.chomp

    gmail = Gmail.connect(@login, @mdp)

    puts " Les emails vont être envoyés :"
    base_de_donnee

    @donnee.each do |array_second|
      gmail.deliver do
        to "#{array_second[2]}"
        subject "Bonjour mairies de France!"
        html_part do
          content_type 'text/html; charset=UTF-8'
          body "<p>Bonjour,</p>
          <p>Je m'appelle Clems, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. </br>
          La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.</p>
          <p>Déjà 500 personnes sont passées par The Hacking Project. Est-ce que votre mairie veut changer le monde avec nous ?</p>
          <p>Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80</p>"
        end
      end
    end
    puts "L'envoi des mails est réussi."
    gmail.logout
  end

end


Mailer.new.envoie_mails
