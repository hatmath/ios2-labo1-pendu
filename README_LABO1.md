# ENTÊTE
   
    Projet:  LABORATOIRE 1 : LE JEU DU PENDU
    Codeurs: Simon Turcotte (2395412) et Mathieu Hatin (2296939)
    Cours : DÉVELOPPEMENT D'APPLICATIONS MOBILES SOUS IOS 2 (420-292-AH)

# LA NOTE ET LES COMMENTAIRES

	Laboratoire 01
	Note remise le 2023-08-28	9/10(90%)	7.9/10(30%)	(27/30)	
	
	Antoine Moevus a laissé le commentaire suivant:
	C'est bien. Mais je peux entrez plusieurs lettres d'un coup et si une est bonne alors ça compte comme un bon coup. Je peux écrire dans les lettres utilisées, ce qui est étrange même si ça ne fait rien. Il faut trouver les ' ' et les chiffres, alors que ça 	devrait être donné. (écrit le 28 août)

# BUG À CORRIGER AVANT LA REMISE SUIVANTE

	- Ne pas pouvoir entrer plusieurs lettres d'un coup
 	- Ne plus pouvoir écrire dans les lettres utilisée
  	- Les espaces et les chiffres devrait être fourni

# ÉNONCÉ/DESCRIPTION

	OBJECTIF
		Le but de ce laboratoire est de mettre en pratique les notions au cours iOS sur les appels réseaux, les contraintes, 
		et le MVC 

	ÉVALUATION
	
		Projet seul, en binôme, ou trinôme.
		Le laboratoire est noté selon la qualité du code et du projet avec le barème ci-dessous. 
		Vous devez remettre un fichier zip qui contient votre projet et le nommer : NNNp_NNNp_201234567_201234567_labo2.zip,
		où ‘NNN’ sont les trois premières lettres de votre nom de famille, ‘p’ est la première lettre de votre prénom, 
		et 201234567 est votre matricule.
	
	PRÉSENTATION DU LABORATOIRE
	
		https://vimeo.com/841920530/b597498fbc?share=copy 
	
	PARTIE 1 (20%)
	
		Présentation : https://vimeo.com/841924015/28f5659530?share=copy 
		Faites le module MovieDownloader afin de récupérer les films sur OMDB api (https://www.omdbapi.com/).
		Assurez-vous d’avoir une clé d’API du site OMDB. 
		Utilisez URLSession pour vos requêtes, et utilisez le fichier fourni, ListeDeFilms, pour obtenir une id IMDB valide.
		En utilisant un print(), assurez d’avoir bien un nouveau titre de film à chaque appel.
		
		PARTIE 2 (20%)
		Démonstration : https://vimeo.com/841968873/6ac9b39c66
		Refaites l’interface graphique, similaire (ou pareil) à celui de la solution. Utilisez au moins une stack view.
		< voir le pdf pour l'image de l'interface >

		Tableau des noms des images dans un fichier ImageNameSquence.swift
		< voir le pdf pour l'image >
		
		Ajout des images dans Assets. Les noms sont les même que dans le tableau ImageNameSequence
		< voir le pdf pour l'image >
		
		Explication : https://vimeo.com/841967708/d58e291311

	PARTIE 3 (30%)
	
		Démonstration : https://vimeo.com/841972574/69f1bb81dd Faites le modèle JeuPendu qui gère le nombres d’erreurs, le titre à deviner pour la partie, et les lettres utilisées.
		
		Assurez-vous de pouvoir :
		- Démarrer une nouvelle partie
		- Vérifier si une lettre est bien dans le titre ou pas
		- Vérifier si la partie en cours est finie (max d’erreurs atteint ou mot trouvé)
		
		Assurez-vous que les espaces soient révélés dès le début de la partie. 
	
	PARTIE 4 (30%)
	
		Démonstration : https://vimeo.com/841974396/b512fab952
		
		Complétez le ViewController afin que le jeu fonctionne.
		
		En plus de ce qui est mentionné dans la vidéo, assurez-vous de pouvoir :
		- Valider une lettre
		- Afficher les lettres utilisées
		- Afficher le nombre d’erreurs de la partie en cours
		- Changer les images en fonctions du nombre d’erreurs
		- Pouvoir redémarrer une partie (bonus optionnelle)
