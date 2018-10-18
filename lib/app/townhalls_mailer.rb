require 'gmail'
require 'json'


class Mailer

  def mass_emailing
    @townhalls_names = [] #va mettre array
    CSV.foreach("./db/townhalls.csv") { |row| @townhalls_names << row[1] }

    @townhalls_emails = []
    CSV.foreach("./db/townhalls.csv") { |row| @townhalls_emails << row[2] }

    @townhalls_names.each(&:capitalize!) # nom marie

    gmail = Gmail.connect!(ENV["GG_USERNAME"], ENV["GG_PSWD"]) # Connection

    i = 0 # Boucle d'envoi d'emails
    while i < @townhalls_names.length
      gmail.deliver do
        to (@townhalls_emails[i]).to_s
        subject "Apprendre à coder gratuitement !" #objet
        html_part do
          content_type 'text/html; charset=UTF-8' #contenu 
          body "<p>Bonjour,</p>
          <br>
          <p>Mon prénom est Clems, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour consiste à envoyer (avec du codage) des emails aux mairies. De cette manière, on espère leur aide pour faire de The Hacking Project une nouvelle manière de se former pour tous.</p>
          <br>
          <p>Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de " + @townhalls_names[i] + " veut changer le monde avec nous ? </p>
          <br>
          <br>
          <p>Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : appelez le 06.95.46.60.80 </p>
          <br>
          <p>Bonne journée !</p>
          <br>
          <p>Clement</p>"
        end
      end
      puts "Email envoyé à #{@townhalls_names[i]}" # Pour connaître la progression
      i += 1
    end
    gmail.logout
  end
end
