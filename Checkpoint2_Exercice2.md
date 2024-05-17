**Exercice 2**

**Q2.1**
J’utilise la fonction de dossier partagé dans Propriétés et Partage. Ensuite, je fais "Connecter un lecteur réseau" et j’ajoute l’adresse du nom du lecteur réseau.

![share Exercice 2](https://github.com/Kamalors/Checkpoint2/assets/162970946/a8a8e157-9e7d-414f-af70-82da9d56500a)

![Exercice 2 client](https://github.com/Kamalors/Checkpoint2/assets/162970946/3365ecee-0b41-4ccf-9ba2-e8058b330495)

![Lecteur exercice 2](https://github.com/Kamalors/Checkpoint2/assets/162970946/11a614af-afc0-4f38-9ecb-6b32f201b63e)


**Q2.2**
J’ai modifié -ArgumentList car celui-ci ne pointait pas vers le bon chemin du script AddLocalUsers.ps1.

![Q 2 2](https://github.com/Kamalors/Checkpoint2/assets/162970946/0635c56b-9722-443a-ae24-056b8ae18624)


**Q2.3**
Cette option sert à exécuter le script en tant qu’administrateur.

**Q2.4**
L’option oblige la fenêtre du script à s’ouvrir en grand (maximized).

**Q2.5**
L’utilisateur Anna Dumas n’a pas été créé car dans la variable $Users, à la fin, il y a un pipe select object qui skipe les deux premières lignes au lieu d’une, ce qui fait que la ligne d’Anna est skipée.

**Q2.6**
Oui, car la variable $Description n’est pas dans la variable UserInfo = @{}.


**Q2.9**
La première fonction sert à savoir quand le script a été utilisé. La seconde indique quel profil a été créé.

**Q2.16**

Elle sert a suprimer les caracter accents d'un prenom et nom exemple Stéphanie Lénoire devient stéphanie.lenoire 
