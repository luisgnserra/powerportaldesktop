# Configuration

<!-- language-selector -->
[🇺🇸 English](../CONFIGURATION.md) · [🇧🇷 Português](../pt-BR/CONFIGURATION.md) · [🇪🇸 Español](../es/CONFIGURATION.md) · [🇨🇳 简体中文](../zh-CN/CONFIGURATION.md) · [🇫🇷 Français](CONFIGURATION.md) · [🇯🇵 日本語](../ja/CONFIGURATION.md) · [🇮🇳 हिन्दी](../hi/CONFIGURATION.md) · [🇸🇦 العربية](../ar/CONFIGURATION.md)
<!-- /language-selector -->

[Retour à l’accueil](../../README.fr.md)

<a name="language-and-sidebar-preferences"></a>
## Préférences de langue et de barre latérale

Utilisez les drapeaux de la barre latérale pour changer de langue. La préférence persiste dans le profil local de l’application de votre utilisateur Windows. L’état replié/déployé de la barre latérale est également enregistré.

Les onze boutons d’outils restent visibles sans défilement de la barre latérale aux tailles de fenêtre prises en charge. Les libellés traduits longs utilisent jusqu’à deux lignes visibles et conservent leur nom accessible/infobulle complet. **Conseil et formation** se trouve sous **À propos du développement**. [Captures déployées et repliées](SCREENSHOTS.md#home-and-navigation).

Priorité de langue :

1. Votre choix enregistré dans l’application.
2. Le fichier `powerportal-defaults.json` de l’installation.
3. La langue système Windows/Electron, avec l’anglais pour les langues non prises en charge.

| Code | Langue |
|---|---|
| `pt` | Portugais (Brésil) |
| `en` | Anglais |
| `es` | Espagnol |
| `zh` | Mandarin / chinois simplifié |
| `fr` | Français |
| `ja` | Japonais |
| `hi` | Hindi |
| `ar` | Arabe, de droite à gauche |

Le programme d’installation écrit ce fichier dans le dossier d’installation choisi pour l’application :

```json
{"language":"en"}
```

Un administrateur peut le modifier après avoir fermé Power Portal pour changer la valeur par défaut des **nouveaux profils utilisateur**. Enregistrez un JSON UTF-8 valide contenant exactement un code de langue pris en charge. Ne modifiez pas les binaires de l’application ni les ressources empaquetées. Toute configuration invalide est signalée explicitement.

Changer la valeur par défaut de l’installation ou réinstaller ne remplace pas le choix de drapeau enregistré par un utilisateur existant. Les noms du modèle, les données, le code et les expressions DAX ne sont jamais traduits.

<a name="connect-to-an-open-power-bi-file"></a>
## Se connecter à un fichier Power BI ouvert

Recommandation : ouvrez le PBIX dans Power BI Desktop et lancez **Outils externes > Power Portal**. Desktop transmet automatiquement le point de connexion du modèle local et l’identifiant de la base de données.

Lors d’un lancement depuis un raccourci Windows :

1. Ouvrez le PBIX dans Power BI Desktop.
2. Un avis de démarrage apparaît lorsque des modèles locaux ouverts sont détectés. Utilisez **Rechercher les modèles ouverts** et sélectionnez le nom du fichier.
3. Utilisez **Lire le modèle Power BI** pour recharger les métadonnées après des modifications.

La détection ne fait que répertorier les modèles disponibles ; elle ne sélectionne pas automatiquement de fichier et n’y écrit rien. Une fois connecté, un état vert compact dans l’en-tête indique les ajustements confirmés ; utilisez **Actualiser le modèle Power BI** pour recharger les métadonnées. [Captures de connexion](SCREENSHOTS.md#connect-to-a-file-already-open-in-power-bi).

Avec un seul modèle ouvert, la lecture peut le découvrir automatiquement. Si plusieurs modèles sont ouverts, sélectionnez explicitement le fichier voulu. Les noms de fichiers similaires sont distingués par un numéro ; les titres des fenêtres Power BI n’exposent pas toujours les chemins complets.

Les connexions sont uniquement locales. Ne configurez pas de serveur public, ne partagez pas le port d’un modèle et ne traitez pas l’application comme un serveur DAX distant. Si Power BI redémarre, reconnectez-vous à la nouvelle instance locale.

<a name="external-tools-registration"></a>
## Enregistrement des outils externes

Le programme d’installation écrit :

```text
%CommonProgramFiles(x86)%\Microsoft Shared\Power BI Desktop\External Tools\PowerPortal.pbitool.json
```

L’enregistrement contient le chemin de l’exécutable installé et ces paramètres substituables de Desktop :

```text
-- --powerportal-server "%server%" --powerportal-database "%database%"
```

Le `--` initial est intentionnel. Ne le supprimez pas et ne remplacez pas manuellement un port périmé. Redémarrez Power BI Desktop après l’installation ou la réparation de l’enregistrement.

<a name="data-locations"></a>
## Emplacements des données

Le profil normal de l’application est :

```text
%APPDATA%\powerportal-desktop
```

Les sous-dossiers pertinents comprennent :

- `themes` : JSON générés et exports de vérification `.applied.json`.
- `model-changes` : enregistrements locaux des tentatives d’écriture confirmées et de leurs résultats.
- `relationship-diagrams` : dispositions visuelles par modèle, comprenant les noms de tables/groupes, les icônes, les couleurs, les positions et la zone de vue. Exportez/importez la disposition depuis la [Carte des relations](RELATIONSHIPS.md#save-and-share-the-organization) ; cette action n’envoie jamais d’écritures au modèle.
- `updates` : programmes d’installation de mise à jour téléchargés et vérifiés. Les téléchargements partiels sont supprimés lors des échecs gérés. Les programmes d’installation vérifiés peuvent être conservés après l’installation ; ne les confondez pas avec des sauvegardes du modèle.
- Le profil stocke aussi les préférences d’interface par utilisateur.

Les sauvegardes de métadonnées sont stockées localement et leur chemin exact est affiché après une écriture réussie. La documentation exportée et les fichiers téléchargés/générés utilisent la destination choisie par l’utilisateur.

Traitez les sauvegardes, journaux et exports comme confidentiels : une sauvegarde BIM complète peut contenir des détails de source/connexion, et les journaux de modifications peuvent contenir l’ancien/le nouveau DAX. Ils ne sont pas automatiquement effacés à la désinstallation. Ne les téléversez pas dans des tickets publics.

Pour réinitialiser les préférences d’interface, choisissez une autre langue ou déployez la barre latérale dans l’application. Une réinitialisation complète du profil peut aussi supprimer les journaux et sauvegardes conservés ; ne supprimez le profil qu’après avoir fermé l’application et délibérément préservé tout ce qui est nécessaire.

<a name="network-and-accounts"></a>
## Réseau et comptes

- Les aperçus locaux et les outils inclus ne nécessitent pas de compte Power Portal.
- L’application installée vérifie les métadonnées publiques des versions GitHub au démarrage. L’outil de mise à jour de son processus principal télécharge les fichiers officiels en HTTPS après **Mettre à jour maintenant**. Aucun nom du modèle, expression, ligne ou identifiant de connexion n’est inclus dans les requêtes de mise à jour.
- Les fenêtres locales disposant d’un accès au modèle bloquent les requêtes web distantes arbitraires.
- Les liens de conseil et les vidéos ouvrent le navigateur par défaut à la demande.
- TV Tool utilise une fenêtre de présentation en ligne isolée pour les pages Power BI/Microsoft publiées. Elle ne partage pas l’accès au modèle local ; sa connexion Microsoft est distincte et ne persiste pas entre les sessions.
- Les requêtes DirectQuery peuvent accéder aux sources d’origine via Power BI et nécessiter un accès réseau ainsi que les identifiants de source existants.
- L’e-mail nécessite un client de messagerie configuré. Utilisez **Copier l’adresse e-mail** si aucun n’est disponible.

Aucune clé d’API, aucun mot de passe, aucun identifiant du portail ni fichier de configuration de code source n’est à fournir pour l’installation.

[Installation](INSTALLATION.md) · [Utilisation et sécurité](USAGE.md) · [Comportement des mises à jour](UPDATES.md)

## Accueil et préférence de démarrage enregistrée

La page d’accueil explique comment ouvrir un fichier dans Power BI Desktop, rechercher son modèle ouvert et envoyer les modifications prises en charge après confirmation. Afficher cet accueil à chaque ouverture est activé par défaut ; désactivez-le pour masquer la présentation aux prochains démarrages. Continuer vers les outils ferme uniquement la présentation actuelle. Bienvenue sur l’accueil permet de la rouvrir et de réactiver le bouton. Le réglage reste dans le profil local, séparé de l’édition Store. Huit langues et le clavier sont pris en charge. Ouvrir cet écran ne modifie aucun modèle. Faites une copie avant et enregistrez le PBIX dans Power BI après. Les tests ont vérifié de vrais redémarrages, la persistance, la recherche de modèles et la mise en page traduite. Les opérations étaient simulées ; aucune donnée réelle n’a été modifiée.

## Accueil en fenêtre modale et installation illustrée

L’accueil apparaît désormais dans une fenêtre modale centrée, et non dans le contenu de la page. L’arrière-plan est bloqué et le focus clavier reste dans la fenêtre. Échap ou Continuer vers les outils ferme uniquement la présentation actuelle. Le bouton de démarrage enregistré et Bienvenue sur l’accueil sont conservés. La fin de l’installation explique Outils externes > Power Portal dans Power BI Desktop et affiche l’image de référence fournie. Si Power BI était déjà ouvert, fermez-le puis rouvrez-le. Les huit langues sont prises en charge ; l’image montre le ruban en portugais. L’option existante de lancer Power Portal est conservée ; elle ne clique pas automatiquement dans Power BI. Aucun modèle n’est modifié par l’accueil.
