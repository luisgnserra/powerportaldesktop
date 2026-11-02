# Analyse de l’actualisation

<!-- language-selector -->
[🇺🇸 English](../REFRESH-ANALYSIS.md) · [🇧🇷 Português](../pt-BR/REFRESH-ANALYSIS.md) · [🇪🇸 Español](../es/REFRESH-ANALYSIS.md) · [🇨🇳 简体中文](../zh-CN/REFRESH-ANALYSIS.md) · [🇫🇷 Français](REFRESH-ANALYSIS.md) · [🇯🇵 日本語](../ja/REFRESH-ANALYSIS.md) · [🇮🇳 हिन्दी](../hi/REFRESH-ANALYSIS.md) · [🇸🇦 العربية](../ar/REFRESH-ANALYSIS.md)
<!-- /language-selector -->

![Analyse de l’actualisation](../images/fr/refresh-analysis.png)

<a name="start-and-safety"></a>
## Démarrage et sécurité

Connectez le bon PBIX, ouvrez Analyse de l’actualisation et choisissez Actualiser et analyser. Confirmez le nom du fichier. Le suivi démarre avant Accueil > Actualiser natif ; les tables ne sont pas actualisées séquentiellement via TOM. Gardez Power BI ouvert et traitez les identifiants, erreurs ou annulations dedans. Une sauvegarde BIM ne restaure pas les données actualisées.

L’actualisation native interroge les sources et remplace les données importées. Sauvegardez une copie du PBIX. Gérez les identifiants et erreurs dans Power BI ; le suivi n’annule pas l’actualisation et ne couvre pas toutes les requêtes auxiliaires Power Query.

<a name="interpret-the-measurements"></a>
## Interpréter les mesures

L’activité observée est l’union des intervalles du moteur attribués exactement à chaque table, sans compter deux fois les phases imbriquées. Ce n’est ni le seul temps de requête source ni un chemin critique prouvé. Le total observé va du lancement à la détection de fin, inclut l’interface et la vérification, mais exclut le comptage ultérieur des lignes. Les événements sans table sont signalés séparément.

Les durées représentent l’activité observée du moteur, pas le temps exclusif de chaque requête M. Ne cumulez pas les tâches parallèles. Requêtes non chargées, étapes M et CPU/mémoire par requête sont indisponibles.

La fin automatique exige la fin observée des commandes d’actualisation et une fenêtre Power BI prête. Fermez les dialogues de résultat. Terminer manuellement la capture signifie toujours analyse incomplète, ne prouve pas la réussite et n’annule pas l’actualisation. Les erreurs moteur/suivi sont explicites. Une capture interrompue n’est pas déclarée terminée.

<a name="history-and-export"></a>
## Historique et export

Les lignes sont comptées après la capture, hors chronomètre. DirectQuery/DirectLake ne sont pas interrogés. L’absence d’événement ne signifie pas zéro seconde. Jusqu’à 30 analyses par modèle restent sur cet ordinateur ; aucun envoi au portail.

Choisissez deux exécutions enregistrées pour comparer les durées et lignes par noms de table identiques. Cache, charge source, volume et parallélisme influencent les écarts ; ils ne prouvent pas une cause. JSON garde null pour les valeurs indisponibles ; CSV laisse vide et protège les formules. L’historique est local, utilise l’identité du diagramme et ne réside pas dans le PBIX. Des fichiers aux identités exposées identiques peuvent le partager : vérifiez le modèle. Les exports contiennent des noms et comptages : vérifiez-les avant partage.

<!-- refresh-correlation -->
Seul le progrès du moteur corrélé exactement par RequestID/ActivityID à une commande d’actualisation active est mesuré. Les requêtes visuelles sans rapport sont exclues. Certaines versions de Power BI omettent ces identifiants : la durée d’une table peut rester indisponible malgré une actualisation exécutée.
