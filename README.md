PROJET DOCUMENTS STRUCTURÉS - Pierre ROCHET/ Mélanie LOPEZ MALET


Analyse des caractéristiques du marché du jeu vidéo en ligne à travers les données d'achat sur la plateforme STEAM.



Le projet est constitué des éléments suivants:
	
	- membres.txt: noms et usernames github des membres du projet

	- dans data: 
		-> les données originales en csv (kaggle_steam-store_games) 
		-> le csv ne contenant que les données choisies (data.csv)
		-> le fichier XML résultant du formatage du csv filtré (data.xml)
		-> un fichier txt décrivant nos choix de modélisation (rapport.txt)

	- dans web: 
		-> les pages html (explication.html et resultat.html)
		-> dans css: la feuille de style (main.css)
		-> dans graphes: les graphiques en html
	
	- dans grammaire:
		-> le schéma RelaxNG

	- dans scripts:
		-> le script pour fusionner tous les csv du jeu de données (merge_all_csv.py)
		-> le script pour transformer le csv en xml (csv_to_xml.py)
		-> le notebook qui a servi a élaborer les graphes avec Plotly

	- dans transformation:
		->les données XML à l'origine du fichier "explication.html" (cf. dossier web)
		-> la feuille XSLT qui a servi à la transformation
		



