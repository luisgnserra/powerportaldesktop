# Notes de version

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

<a name="172"></a>
## 1.7.2

- L’introduction apparaît lors de la première visite du diagramme à chaque session. Rouvrez-la avec **Organiser avec des groupes**. SAP et Excel sont des exemples illustratifs, pas de nouveaux connecteurs ni des logos officiels. Les groupes vides sont des zones de dépôt visibles. Déposer dans un groupe surligné affecte la table ; en dehors, son groupe actuel est conservé.
- Séparez les tables par système, sujet, faits ou dimensions. Créez un groupe et glissez une table par son titre dedans. Le groupe cible est mis en évidence.
- Votre diagramme est enregistré automatiquement sur cet ordinateur pour le même modèle : groupes, images, couleurs et positions. Exportez le JSON pour conserver une copie ou l’importer plus tard. Vérifiez le message de sauvegarde.
- L’organisation visuelle ne modifie ni les tables, ni les sources, ni la disposition native de Power BI. Pour retirer une table, sélectionnez Sans groupe dans le panneau.

<a name="assets"></a>
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

<a name="assets-1"></a>
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

<a name="assets-2"></a>
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

<a name="assets-3"></a>
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

<a name="assets-4"></a>
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

<a name="assets-5"></a>
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

<a name="assets-6"></a>
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
