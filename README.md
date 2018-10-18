
# PROJET THP SCRAPING / MAILING 

### Projet réalisé par Alexandre de Temmerman, Thomas Léoty, Clément Castel et Yoann Velasco.


Le projet réalisé va :

1) Récupérer les emails de trois départements de notre choix (78,92 et 93).

2) Envoyer les emails
Le programme d'envoi d'emails va reprendre chaque colonne de notre CSV/JSON et va envoyer un email à la mairie indiquée avec comme message

3) Le bot Twitter aura deux parties :
- Un premier programme qui va repasser sur chaque élément du CSV/JSON et ajouter une colonne supplémentaire avec le handle twitter
- Un second programme qui prend la colonne des handle Twitter, et qui follow les users concernés. 

## Instruction 
```
- Faites un git clone du fichier https://github.com/ClemsRobot/THPJeudiS3.git
- Faire un "bundle install" dans le terminal et un "ruby app.rb"
```
### Gems utilisés

- gem 'rubocop', '~> 0.57.2'
- gem 'pry'
- gem 'gmail'
- gem 'json'
- gem 'gmail'
- gem 'google_drive'
- gem 'google-api-client', '~> 0.8' 

## ARBORESCENCE 


├── .gitignore
├── .env 
├── README.md
├── Gemfile
├── Gemfile.lock
├── app.rb
├── db
│   └── townhalls.csv
└── lib
    ├── app
    │   ├── townhalls_scrapper.rb
    │   ├── townhalls_mailer.rb
    │   ├── townhalls_adder_to_db.rb
    │   └── townhalls_follower.rb
    └── views
        ├── done.rb
        └── index.rb




## RESULTATS 

### Email envoyé 

Bonjour,
Je m'appelle Clément et je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de notre école est celle du peer-learning, où nous travaillons par petit groupes sur des projets concrets qui font apprendre le code. Le projet du jour consiste à envoyer (avec du code) des emails aux mairies. De cette manière, on espère leur aide pour faire de The Hacking Project une nouvelle manière de se former pour tous.

Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de " + @townhalls_names[i] + " veut changer le monde avec nous ? 

Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : appelez le 06.95.46.60.80 

Bonne journée à vous !
    
         
### Nombre de mairies touchés :
- 36 mairies dans le 92
- 40 mairies dans le 93
- 262 mairies dans le 78

#### Handle twitter utilisé :

lovecode












