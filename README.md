
# PROJET THP SCRAPING/MAILING/MASSFOLLOW

### Projet réalisé par Alexandre de Temmerman, Thomas Léoty, Clément Castel et Yoann Velasco.


Le programme réalisé va :

1 - Récupérer les emails de trois départements de notre choix (92,93,2A).

2) Envoyer les emails
Le programme d'envoi d'emails va reprendre chaque colonne de notre CSV/JSON et va envoyer un email à la mairie indiquée avec comme message

3) Le bot Twitter aura deux parties :
- Un premier programme qui va repasser sur chaque élément du CSV/JSON et ajouter une colonne supplémentaire avec le handle twitter
- Un second programme qui prend la colonne des handle Twitter, et qui follow les users concernés. 

## Instruction :
```
- Faites un git clone du fichier https://github.com/ClemsRobot/THPJeudiS3.git
- Faire un "bundle install" dans le terminal et un "ruby app.rb"
```
### Gems utilisés


## ARBORESCENCE :

ultimate_townhall
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




## RESULTATS :

#### Email envoyé :

#### Nombre de mairies touchés :

#### Handle twitter utilisé :









la partie d'introduction qui présente l'équipe, explique en un paragraphe les grandes lignes du programme, puis comment l'utiliser ($ bundle install)
une partie qui explique l'arborescence du dossier, et l'utilité de tous les programmes
une partie qui dit comment se servir du programme, et quelles sont les gems utilisées

Ce sera un excellent exercice de synthèse : comme tu peux le voir sur Slack, bien se faire comprendre et expliquer ses choix stratégiques est une compétence très utile.

