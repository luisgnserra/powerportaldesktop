# Notes de version

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

<a name="1810"></a>
## 1.8.10

**Illustrations de premier plan animées et survol enrichi**

Les douze couvertures d’accueil animent désormais l’illustration principale de chaque outil, et pas seulement le fond : flottement et rotation doux, avec un badge de validation pulsant. Le survol ou le focus clavier révèle des panneaux à barres, un indicateur hexagonal, une orbite pointillée et des particules animées. Les animations supplémentaires sont en pause hors survol/focus. Les couches décoratives n’interceptent pas les clics et restent hors de l’arbre d’accessibilité. La préférence de mouvement réduit arrête ces animations tout en conservant détails statiques, contraste et focus. Les illustrations locales originales sans texte, les huit langues et la navigation sont préservées. Les tests du paquet ont mesuré les transformations réelles du premier plan et des panneaux, le focus clavier, le mouvement réduit, douze couvertures distinctes et la disposition dans huit langues. Les captures sont des images statiques des états normal/survol, pas des vidéos ; les données sont synthétiques.

<a name="189"></a>
## 1.8.9

**Échantillon du calendrier et raccourci d’actualisation native**

Dans le générateur de calendrier, l’échantillon réel (50 lignes maximum) apparaît désormais sous Générer le script. Actualiser dans Power BI se trouve à côté et, avec une connexion active, ouvre Performances d’actualisation puis démarre le même flux natif confirmé. Suivez les états, durées et nombres de lignes. Cela actualise le modèle entier, sans appliquer le script, créer ou remplacer le calendrier, ni enregistrer le PBIX. Créer le calendrier dans Power BI reste une action distincte. Le bouton est désactivé hors connexion, accessible au clavier et traduit dans les huit langues. Annulation et erreurs utilisent le flux existant. L’échantillon reste la dernière lecture : utilisez Lire le calendrier sélectionné après actualisation. Les tests de l’application empaquetée ont vérifié disposition, huit traductions, blocage hors connexion, connexion exacte, annulation, erreurs visibles, nouvelle tentative et création du calendrier préservée. Aucune actualisation réelle n’a été lancée ; les captures utilisent des données synthétiques.

<a name="188"></a>
## 1.8.8

**Lignes dynamiques et envoi de thèmes vérifié**

Dans la carte des relations, Style des lignes permet de choisir des courbes ou des lignes droites avec angles à 90 degrés. Les extrémités utilisent dynamiquement les bords haut/bas ou gauche/droite qui se font face, selon la taille réelle des cartes. Les connexions latérales conservent la hauteur de la colonne liée. Les flèches noires à contour blanc suivent les segments droits sans couper les angles en diagonale. Le style est enregistré automatiquement et inclus dans le JSON exporté ; les anciens schémas restent courbes. Cela ne modifie pas la disposition native de Power BI et ne réalise pas un évitement global des obstacles.

Envoyer le thème directement à Power BI rend le focus à Power Portal après l’importation native et pendant la vérification par exportation, uniquement si Power BI est au premier plan. Une fois le thème vérifié, Power BI est affiché ; les erreurs affichent également la fenêtre sélectionnée. Les boîtes de dialogue natives peuvent apparaître brièvement et ne sont pas masquées : Desktop ne dispose pas d’une API de thèmes prise en charge sans dialogue. Les changements asynchrones d’onglet sont gérés avant confirmation. Un test réel autorisé de l’application empaquetée a vérifié importation/exportation, retour au Portal et activation finale de Power BI, puis restauré le thème Par défaut original sans enregistrer le PBIX. Les captures utilisent des données synthétiques.

<a name="187"></a>
## 1.8.7

**Sélection des couleurs plus claire et fiable**

Les onze couleurs du thème disposent désormais d’un échantillon natif visible et d’un bouton Choisir la couleur à côté du champ HEX modifiable. Cliquez sur l’échantillon ou le bouton, ou appuyez sur Entrée/Espace lorsque le bouton a le focus. Le sélecteur ne dépend plus d’un champ invisible sans dimensions ni d’un double-clic sur HEX. Saisie manuelle, import, aperçu en direct et export JSON sont conservés. Les erreurs sont explicites. L’ouverture native a été vérifiée plusieurs fois sous Windows, ainsi que les onze boutons à la souris/au clavier et les huit langues.

Analyse de l’actualisation devient Performances de l’actualisation dans le menu, l’accueil, le titre et les huit langues. Seul le nom change : actualisation native, progression, durées, lignes, historique local et compatibilité JSON/CSV sont conservés. Les analyses enregistrées restent disponibles sans migration ni nouvelle actualisation. Les images utilisent des données synthétiques.

<a name="186"></a>
## 1.8.6

**Suivez l’actualisation dans Power Portal**

Lancez Actualiser et analyser dans Power Portal et suivez les cartes en direct : table, état observé, phase du moteur, durée d’activité et dernier texte natif disponible de Power BI. Power Portal reprend le focus après le lancement et, si Power BI revient au premier plan, après la fin native. Il ne reprend pas constamment le focus aux autres applications. Voir dans Power BI ouvre le fichier sélectionné sans relancer l’actualisation ; ce choix désactive le retour automatique pour cette capture.

Power BI reste le moteur. Sa fenêtre peut apparaître brièvement : ce n’est pas une API prise en charge pour traiter un PBIX sans fenêtre. Identifiants, erreurs et annulation restent dans Power BI ; aucun dialogue n’est masqué ou fermé automatiquement. Le texte natif conserve la langue de Power BI et l’heure de dernière lecture. Son absence est explicite et le suivi du moteur continue si le lecteur échoue. Une phase terminée ne prouve pas la fin de la table, aucun pourcentage n’est inventé et les lignes finales sont comptées après la capture. L’historique et JSON contiennent les états natifs : vérifiez les exports avant partage. L’application empaquetée a été testée avec une actualisation réelle autorisée : 4/4 tables mesurées, 4/4 comptages, états natifs en direct, focus restauré, bouton fonctionnel et historique conservé après rechargement. Aucun PBIX n’a été enregistré automatiquement ; les images utilisent des données synthétiques.

<a name="185"></a>
## 1.8.5

**Correction des mesures de l’actualisation native**

Analyse de l’actualisation reconnaît désormais la commande XML Refresh native de Power BI Desktop, y compris dans Batch, ainsi que XMLA Process et TMSL refresh. Auparavant, l’actualisation pouvait s’exécuter mais son progrès était écarté, laissant 0 table mesurée, des comptages indisponibles et refreshCompletionNotProven. Le succès explicite du moteur est accepté en l’absence du champ Error facultatif ; les codes d’erreur non nuls et les erreurs XMLA restent prioritaires. Le progrès exige toujours une corrélation exacte de requête/activité pour exclure les requêtes visuelles sans rapport.

Avant la première commande reconnue, l’interface indique qu’elle attend les événements d’actualisation Power BI. Une fin non confirmée affiche une explication traduite au lieu d’un simple code technique. Mettez à jour l’application, connectez le bon PBIX et relancez Actualiser et analyser ; les anciens rapports incomplets sont conservés sans être déclarés réussis. L’application empaquetée a été validée de bout en bout sur une actualisation réelle autorisée, avec activité par table, lignes, fin automatique et historique conservé après rechargement. Les captures restent des exemples synthétiques sans données ni noms de modèles du client.

<a name="184"></a>
## 1.8.4

**Télécharger les mises à jour dans le navigateur**

Lorsqu’une nouvelle version est disponible, l’avis propose Télécharger dans le navigateur à côté de Mettre à jour. Le bouton ouvre l’adresse officielle de l’installateur GitHub détecté dans le navigateur par défaut, sans fermer Power Portal ni lancer l’installation. Exécutez manuellement l’installateur téléchargé lorsque vous le souhaitez. Cette option reste disponible après une erreur de mise à jour automatique. Les échecs d’ouverture du navigateur sont affichés. Mettre à jour continue de télécharger dans l’application, de vérifier SHA-256 et taille, puis de demander l’autorisation Windows. Le téléchargement par navigateur ne bénéficie pas de la vérification automatique de l’application : comparez le SHA-256 publié avant d’exécuter l’installateur. Les boutons et l’explication sont traduits dans les huit langues.

<a name="183"></a>
## 1.8.3

**Aperçu du thème avec courbes lissées**

Le graphique en courbes du générateur de thèmes utilise désormais des courbes cubiques lissées plutôt que des segments droits, avec les données d’exemple et du modèle connecté. Elles passent par les points d’origine sans dépassement entre les valeurs ; couleurs, marqueurs et infobulles sont conservés. Seul l’aperçu change : le JSON exporté et le format des lignes des visuels Power BI existants restent inchangés.

<a name="182"></a>
## 1.8.2

**Corrections du lancement de l’actualisation**

Analyse de l’actualisation se trouve directement sous Carte des relations dans le menu et la galerie. La recherche du bouton natif ignore les onglets Home en double des vues de requêtes DAX et TMDL, évitant « Ambiguous Power BI control: home ». Si le contrôle est indisponible, sélectionnez la vue Rapport, Données ou Modèle dans Power BI.

Actualiser reste désactivé pendant la confirmation, la validation et le démarrage du suivi ; Terminer la capture reste masqué jusqu’à ce que la capture soit prête. Cela empêche un second lancement de signaler à tort « Finish the active Power BI operation before refreshing ». Un échec avéré avant l’appel natif arrête le suivi, vérifie le nettoyage et permet de réessayer. Si l’appel a pu avoir lieu, l’erreur reste visible et la capture en attente : vérifiez Power BI, terminez l’actualisation et fermez les dialogues avant de terminer la capture. Les requêtes répétées reprennent la capture existante sans relancer l’actualisation. Les opérations réellement actives doivent d’abord se terminer.

<a name="181"></a>
## 1.8.1

**Cartes animées sur l’accueil**

Les douze cartes d’accueil utilisent le même bleu marine que le menu (#041e43), avec des scènes vectorielles originales sans texte. Chaque outil conserve son illustration centrale, enrichie de panneaux de données, graphiques, base de données, orbites, grille et satellites flottants. Les lignes de signal se déplacent doucement. Les couvertures ne chargent aucune image, aucun script ni service externe.

Survolez une carte ou sélectionnez-la au clavier pour afficher cadre et halo dorés, reflet lumineux, scène éclaircie, flèche circulaire et action dorée. La pression donne un retour immédiat sans retarder la navigation. Entrée/Espace ouvrent toujours le même outil. La préférence de mouvement réduit arrête les animations en conservant le surlignage statique et le focus visible. Titres et actions restent hors de l’image et suivent la langue choisie. Les captures montrent des états statiques normal/survol, pas des vidéos.

<a name="180"></a>
## 1.8.0

**Analyse de l’actualisation** — Mesurez l’actualisation native. Comparez les durées et les lignes.

Connectez le bon PBIX, ouvrez Analyse de l’actualisation et choisissez Actualiser et analyser. Confirmez le nom du fichier. Le suivi démarre avant Accueil > Actualiser natif ; les tables ne sont pas actualisées séquentiellement via TOM. Gardez Power BI ouvert et traitez les identifiants, erreurs ou annulations dedans. Une sauvegarde BIM ne restaure pas les données actualisées.

L’activité observée est l’union des intervalles du moteur attribués exactement à chaque table, sans compter deux fois les phases imbriquées. Ce n’est ni le seul temps de requête source ni un chemin critique prouvé. Le total observé va du lancement à la détection de fin, inclut l’interface et la vérification, mais exclut le comptage ultérieur des lignes. Les événements sans table sont signalés séparément.

La fin automatique exige la fin observée des commandes d’actualisation et une fenêtre Power BI prête. Fermez les dialogues de résultat. Terminer manuellement la capture signifie toujours analyse incomplète, ne prouve pas la réussite et n’annule pas l’actualisation. Les erreurs moteur/suivi sont explicites. Une capture interrompue n’est pas déclarée terminée.

Les lignes sont comptées après la capture, hors chronomètre. DirectQuery/DirectLake ne sont pas interrogés. L’absence d’événement ne signifie pas zéro seconde. Jusqu’à 30 analyses par modèle restent sur cet ordinateur ; aucun envoi au portail.

<a name="175"></a>
## 1.7.5

- La carte des relations se trouve désormais juste après TV Tool dans le menu latéral et la galerie d’accueil.
- Le bloc générique Données réelles du modèle est retiré du Générateur de calendrier et de la Bibliothèque de composants. Leurs propres commandes restent disponibles ; la période réelle utilise le calendrier sélectionné dans l’outil.
- Les couvertures d’accueil ont été redessinées comme illustrations vectorielles locales sans texte intégré. Les titres, descriptions et actions restent hors des images et suivent la langue choisie.
- Glissez une colonne source sur une autre table pour ouvrir le dialogue de relation réelle et choisir la colonne cible. Un dépôt sur une colonne la présélectionne. Vérifiez cardinalité, filtre et état actif, puis validez et appliquez avec confirmation native et sauvegarde BIM.

<a name="assets"></a>
### Fichiers

- `PowerPortal-Setup-1.7.5-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="174"></a>
## 1.7.4

- L’en-tête animé de Power Portal intègre désormais le nom du fichier, l’état de connexion et les cinq boutons de lecture, importation, recherche et mise à jour. La barre séparée sous la bannière est supprimée pour libérer de l’espace. Le contenu s’adapte dans l’en-tête sur les petites fenêtres et dans les huit langues, dont l’arabe. Les confirmations, notifications et mises à jour restent inchangées.

<a name="assets-1"></a>
### Fichiers

- `PowerPortal-Setup-1.7.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="173"></a>
## 1.7.3

- Les flèches de relation sont désormais placées sur la courbe et pivotent selon sa direction locale, y compris pour les liens diagonaux ou inversés.
- Les flèches SVG agrandies à 36 × 26 unités restent noires avec un contour blanc de 3 unités, indépendamment de la couleur du lien.
- Le filtrage unidirectionnel reste de la destination vers la source ; le bidirectionnel affiche deux flèches opposées. Le filtrage automatique conserve le point d’interrogation. Ce changement est uniquement visuel.

<a name="assets-2"></a>
### Fichiers

- `PowerPortal-Setup-1.7.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="172"></a>
## 1.7.2

- L’introduction apparaît lors de la première visite du diagramme à chaque session. Rouvrez-la avec **Organiser avec des groupes**. SAP et Excel sont des exemples illustratifs, pas de nouveaux connecteurs ni des logos officiels. Les groupes vides sont des zones de dépôt visibles. Déposer dans un groupe surligné affecte la table ; en dehors, son groupe actuel est conservé.
- Séparez les tables par système, sujet, faits ou dimensions. Créez un groupe et glissez une table par son titre dedans. Le groupe cible est mis en évidence.
- Votre diagramme est enregistré automatiquement sur cet ordinateur pour le même modèle : groupes, images, couleurs et positions. Exportez le JSON pour conserver une copie ou l’importer plus tard. Vérifiez le message de sauvegarde.
- L’organisation visuelle ne modifie ni les tables, ni les sources, ni la disposition native de Power BI. Pour retirer une table, sélectionnez Sans groupe dans le panneau.

<a name="assets-3"></a>
### Fichiers

- `PowerPortal-Setup-1.7.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="171"></a>
## 1.7.1

- Préparez des relations en cliquant ou en faisant glisser entre des extrémités de colonnes exactes ; vérifiez un brouillon orange en pointillés et appliquez-le avec confirmation et sauvegarde. Les paires existantes s’ouvrent pour modification au lieu de créer des doublons.
- Menu de ligne par clic droit pour modifier, choisir des couleurs locales et supprimer avec confirmation.
- Plus de 30 icônes de tables/groupes, images PNG/JPEG locales de groupe et déplacement par l’arrière-plan du groupe. Les images sont normalisées et incorporées aux diagrammes enregistrés/exportés.
- Les tables de date/heure automatiques de Power BI sont masquées par défaut avec une option de visibilité enregistrée ; les tables métier ordinaires masquées restent visibles. Déployez n’importe quelle table pour sélectionner toutes ses colonnes.
- Actualisez le diagramme depuis Power BI après des modifications externes tout en conservant la personnalisation visuelle encore présente.
- Détection automatique native de Desktop avec confirmation préalable, sauvegarde BIM et parcours explicite de finalisation/vérification ; les écritures simultanées du modèle, les changements de modèle/projet et les mises à jour restent bloqués jusqu’à la finalisation.
- Documentation en huit langues et les 19 captures de l’application par langue actualisées pour 1.7.1. L’image authentique du ruban Power BI reste partagée en portugais.

<a name="assets-4"></a>
### Fichiers

- `PowerPortal-Setup-1.7.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="170"></a>
## 1.7.0

- Nouvelle **Carte des relations** réservée à Desktop, le onzième outil : blocs de tables déplaçables, déplacement/zoom, indicateurs de cardinalité/sens du filtre et liens inactifs en pointillés.
- Groupes personnalisés de faits/dimensions/métier avec noms, icônes, couleurs et déplacement collectif. En-têtes de table conviviaux et lignes de relation colorées.
- Enregistrement automatique des dispositions visuelles par modèle et import/export JSON validé, avec échecs d’enregistrement visibles et nouvelle tentative. Les propriétés visuelles ne renomment pas les objets du modèle et ne modifient pas le diagramme natif de Power BI.
- Création, modification, activation/désactivation et suppression des relations en direct via TOM. Chaque modification nécessite une confirmation native explicite, une sauvegarde des métadonnées et une protection contre les états périmés ; les paramètres RLS/d’intégrité existants sont préservés.
- Les projets importés restent en lecture seule ; les relations non prises en charge et les échecs de validation du moteur sont signalés explicitement.
- Interface en huit langues, barre latérale compacte de onze éléments sans défilement, programme d’installation actualisé et guides en anglais avec 20 captures.

<a name="assets-5"></a>
### Fichiers

- `PowerPortal-Setup-1.7.0-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="164"></a>
## 1.6.4

- Un exemple TV Tool bien visible en haut ouvre le tableau de bord officiel fonctionnel dans le navigateur par défaut ; les diapositives illustratives locales restent disponibles.
- La notification de mise à jour disponible utilise des couleurs plus marquées, un texte de version plus grand, une bannière fixe et une animation douce respectant les préférences de réduction des animations.
- Aucune ligne « à jour » permanente. L’état connecté est compact dans l’en-tête, avec le rappel de copie du PBIX dans son infobulle.
- L’import JSON du thème est mis en évidence ; **Envoyer le thème directement à Power BI** se trouve désormais en fin de page. Suppression des paragraphes explicatifs redondants de l’outil, tout en conservant la confirmation native et les limites documentées de l’automatisation.
- Tous les nouveaux textes prennent en charge huit langues. Programme d’installation, assistant, somme de contrôle et 18 captures actualisés, dont l’action de thème en fin de page.

<a name="assets-6"></a>
### Fichiers

- `PowerPortal-Setup-1.6.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="163"></a>
## 1.6.3

- Incrément de version stable pour permettre aux utilisateurs de 1.6.2 de tester la véritable notification de mise à jour et le parcours **Mettre à jour maintenant**.
- Aucun changement fonctionnel ; inclut le même outil de mise à jour soumis au consentement et les dix outils.
- Programme d’installation/somme de contrôle/assistant, documentation et captures actualisés pour 1.6.3.

Conservez 1.6.2 installé pour le test : rouvrez l’application ou cliquez sur **Rechercher des mises à jour**. Choisissez **Mettre à jour maintenant** uniquement lorsque vous êtes prêt à installer. Le responsable de maintenance n’a pas mis à jour l’installation locale de l’utilisateur pendant la publication.

<a name="assets-7"></a>
### Fichiers

- `PowerPortal-Setup-1.6.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="162"></a>
## 1.6.2

- Recherche au démarrage de la dernière version stable officielle publiée sur GitHub dans l’application installée.
- **Mettre à jour maintenant** télécharge et vérifie l’EXE x64 exact à l’aide de l’empreinte SHA-256 et de la taille du fichier GitHub, puis lance un programme d’installation silencieux avec élévation dans le dossier d’installation actuel.
- L’installation ne se produit qu’après le clic de l’utilisateur et l’autorisation Windows. Power BI n’est pas fermé ; des avertissements sur les modifications non envoyées sont affichés.
- Protection contre l’exécution simultanée des mises à jour et des écritures dans le modèle, téléchargements HTTPS bornés, erreurs explicites hors ligne/somme de contrôle/UAC et commandes de nouvelle tentative.
- Notification en huit langues, **Rechercher des mises à jour** manuel, captures actualisées et guide des mises à jour en anglais.

L’application reste non signée. Installez manuellement 1.6.2 une fois si vous utilisez 1.6.1 ou une version antérieure. Rouvrez Power Portal lorsqu’une mise à jour est terminée.

<a name="assets-8"></a>
### Fichiers

- `PowerPortal-Setup-1.6.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

Validation des comparaisons de versions, de la vérification des versions officielles, du rejet selon l’empreinte/la taille pendant le téléchargement en flux, du nettoyage des fichiers partiels, des arguments de lancement du programme d’installation, du consentement/de la localisation/du comportement des erreurs de l’interface et de l’enregistrement empaqueté. Aucune mise à jour réelle de l’application ni écriture dans un modèle client n’a été effectuée pendant les tests automatisés.

<a name="161"></a>
## 1.6.1

- Le catalogue de la barre latérale tient dans la hauteur de fenêtre prise en charge sans barre de défilement de navigation, dans les huit langues et dans les modes déployé/replié.
- **Conseil et formation** déplacé sous **À propos du développement**, au-dessus des logos de propriété.
- L’avis de démarrage détecte les modèles Power BI ouverts disponibles lors d’un lancement indépendant et propose une connexion explicite.
- L’avis de connexion explique les requêtes et les modifications confirmées, avec un rappel de copie du PBIX et un bouton d’actualisation du modèle.
- La documentation illustrée en anglais couvre le ruban Outils externes, chaque outil, la sélection du modèle, les requêtes et les boutons d’envoi direct.
- Le programme d’installation actualisé, l’assistant PowerShell figé, les sommes de contrôle et le manifeste de version restent synchronisés.

Validation de la barre latérale à des hauteurs de fenêtre de 680, 768 et 900 pixels dans huit langues, du démarrage/de la sélection/de l’actualisation sans écriture dans le modèle, ainsi que de l’enregistrement empaqueté/de la fermeture par le programme d’installation. Les captures de documentation utilisent des données synthétiques ; aucun fichier client n’a été modifié.

<a name="assets-9"></a>
### Fichiers

- `PowerPortal-Setup-1.6.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

L’application reste non signée. L’envoi direct de thèmes utilise toujours l’automatisation visible de l’interface Desktop. Consultez le [guide illustré](docs/fr/SCREENSHOTS.md) et le [guide d’utilisation et de sécurité](docs/fr/USAGE.md).

<a name="160"></a>
## 1.6.0

Première version publique du programme d’installation dans ce dépôt exclusivement consacré à la distribution.

- Espace de conseil pour Power BI, Microsoft Fabric, l’ingénierie des données et les solutions de données complètes.
- Lien de formation In Company, deux vidéos mises en avant, actions de contact WhatsApp/e-mail et option de copie de l’adresse e-mail.
- Huit langues incluses : portugais, anglais, espagnol, chinois mandarin simplifié, français, japonais, hindi et arabe.
- Préférence de langue enregistrée par utilisateur, drapeaux sur deux lignes et disposition de droite à gauche pour l’arabe.
- Choix de la langue d’installation avec drapeaux et suggestion de la langue de l’interface Windows.
- Les dix outils existants, galerie d’accueil, navigation repliable, informations sur la propriété/le développement et intégration des modèles locaux.
- Envoi de thèmes confirmé par automatisation visible de l’interface Windows ; conservation de l’export/de la vérification du thème actuel.
- Documentation en anglais sur l’installation/la configuration/la sécurité/le dépannage et assistant d’installation PowerShell vérifiant la somme de contrôle.

<a name="distribution-assets"></a>
### Fichiers de distribution

- `PowerPortal-Setup-1.6.0-x64.exe` — programme d’installation NSIS Windows x64.
- `SHA256SUMS.txt` — somme de contrôle du programme d’installation.
- `install.ps1` — assistant de téléchargement/d’installation figé à la version.

<a name="known-limitations"></a>
### Limites connues

Le programme d’installation n’est pas signé. L’envoi de thèmes utilise toujours la boîte de dialogue d’import visible de Desktop. Les visuels de rapport ne peuvent pas être placés par TOM. Les écritures de calendrier nécessitent une actualisation dans Desktop. Aucun outil de mise à jour automatique, entrée de catalogue winget/Chocolatey, MSI ou paquet macOS, ARM64 ou Report Server n’est fourni.

Aucun modèle utilisateur n’a été modifié pendant la validation de l’assistant de distribution de cette version.
