
INTRODUCTION

Projet réalisé par Alexandre de Temmerman, Thomas Léoty, Clément Castel et Yoann Velasco.


Instruction :

- Faites un git clone du fichier https://github.com/ClemsRobot/THPJeudiS3.git
- Faire un "bundle install" dans le terminal et un "ruby app.rb"



Le programme réalisé va :

1 - Récupérer les emails de trois départements de notre choix (92,93,2A). 
Puis il devra enregistrer ces emails dans un fichier CSV/JSON. Pour chaque mairie, il devra y mettre :

* l'email
* Le nom de la commune
* Le département (numéro ou nom)


2) Envoyer les emails
Le programme d'envoi d'emails va reprendre chaque colonne de notre CSV/JSON et va envoyer un email à la mairie indiquée avec comme message :

Bonjour,
Je m'appelle [PRÉNOM], je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de [NOM_COMMUNE] veut changer le monde avec nous ?


Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80


3) Le bot Twitter aura deux parties :

Un premier programme qui va repasser sur chaque élément du CSV/JSON et ajouter une colonne supplémentaire avec le handle twitter

Un second programme qui prend la colonne des handle Twitter, et qui follow les users concernés. Avec un compte genre "Apprendre à coder" c'est pas mal




ARBORESCENCE :

ultimate_townhall
├── .gitignore
├── .env (pas sur le répo GitHub, bien entendu 😉)
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




RESULTATS :



une partie qui explique ce qui a été fait : l'email envoyé, le nombre de mairies touchées, le handle Twitter qui a été utilisé







la partie d'introduction qui présente l'équipe, explique en un paragraphe les grandes lignes du programme, puis comment l'utiliser ($ bundle install)
une partie qui explique l'arborescence du dossier, et l'utilité de tous les programmes
une partie qui dit comment se servir du programme, et quelles sont les gems utilisées
une partie qui explique ce qui a été fait : l'email envoyé, le nombre de mairies touchées, le handle Twitter qui a été utilisé
Ce sera un excellent exercice de synthèse : comme tu peux le voir sur Slack, bien se faire comprendre et expliquer ses choix stratégiques est une compétence très utile.

