# Carte des relations

<!-- language-selector -->
[🇺🇸 English](../RELATIONSHIPS.md) · [🇧🇷 Português](../pt-BR/RELATIONSHIPS.md) · [🇪🇸 Español](../es/RELATIONSHIPS.md) · [🇨🇳 简体中文](../zh-CN/RELATIONSHIPS.md) · [🇫🇷 Français](RELATIONSHIPS.md) · [🇯🇵 日本語](../ja/RELATIONSHIPS.md) · [🇮🇳 हिन्दी](../hi/RELATIONSHIPS.md) · [🇸🇦 العربية](../ar/RELATIONSHIPS.md)
<!-- /language-selector -->

[Retour à l’accueil](../../README.fr.md) · [Captures](SCREENSHOTS.md) · [Sécurité du modèle](USAGE.md)

Disponible dans **Power Portal Desktop 1.8.4**. Ce nouvel outil est réservé à Desktop et distinct de la vue Modèle de Power BI. Il lit les relations réelles entre tables/colonnes et peut appliquer des modifications confirmées au modèle sémantique local connecté.

![Canevas de relations avec groupes de faits et de dimensions, cardinalités et liens colorés](../images/fr/relationship-map.png)

Les flèches de relation sont désormais placées sur la courbe et pivotent selon sa direction locale, y compris pour les liens diagonaux ou inversés. Les flèches SVG agrandies à 36 × 26 unités restent noires avec un contour blanc de 3 unités, indépendamment de la couleur du lien. Le filtrage unidirectionnel reste de la destination vers la source ; le bidirectionnel affiche deux flèches opposées. Le filtrage automatique conserve le point d’interrogation. Ce changement est uniquement visuel.

<a name="create-a-real-relationship-in-power-bi"></a>
## Créer une relation réelle dans Power BI

![Créer une relation réelle dans Power BI](../images/fr/relationship-create.png)

La carte des relations se trouve désormais juste après TV Tool dans le menu latéral et la galerie d’accueil. Le bloc générique Données réelles du modèle est retiré du Générateur de calendrier et de la Bibliothèque de composants. Leurs propres commandes restent disponibles ; la période réelle utilise le calendrier sélectionné dans l’outil. Les couvertures d’accueil ont été redessinées comme illustrations vectorielles locales sans texte intégré. Les titres, descriptions et actions restent hors des images et suivent la langue choisie. Glissez une colonne source sur une autre table pour ouvrir le dialogue de relation réelle et choisir la colonne cible. Un dépôt sur une colonne la présélectionne. Vérifiez cardinalité, filtre et état actif, puis validez et appliquez avec confirmation native et sauvegarde BIM.

La validation vérifie types, paires en double, liens directs actifs et nombres réels de lignes et de valeurs distinctes des deux colonnes, sans échantillonnage. Les doublons du côté Un sont rejetés. Les requêtes sont limitées à 20 secondes et les erreurs sont explicites. Valider n’écrit jamais. Appliquer recommence la validation, puis le moteur vérifie clés et chemins ambigus à l’enregistrement. Le brouillon pointillé n’est pas une relation sauvegardée : seule une écriture confirmée réussie la crée. Enregistrez ensuite le PBIX. Tests et captures utilisent des données synthétiques, sans modifier de PBIX client.

<a name="how-to-organize-with-groups"></a>
## Organiser avec des groupes

![Organisez votre modèle en groupes](../images/fr/relationship-groups.png)

L’introduction apparaît lors de la première visite du diagramme à chaque session. Rouvrez-la avec **Organiser avec des groupes**. SAP et Excel sont des exemples illustratifs, pas de nouveaux connecteurs ni des logos officiels. Les groupes vides sont des zones de dépôt visibles. Déposer dans un groupe surligné affecte la table ; en dehors, son groupe actuel est conservé.

Séparez les tables par système, sujet, faits ou dimensions. Créez un groupe et glissez une table par son titre dedans. Le groupe cible est mis en évidence.

Votre diagramme est enregistré automatiquement sur cet ordinateur pour le même modèle : groupes, images, couleurs et positions. Exportez le JSON pour conserver une copie ou l’importer plus tard. Vérifiez le message de sauvegarde.

L’organisation visuelle ne modifie ni les tables, ni les sources, ni la disposition native de Power BI. Pour retirer une table, sélectionnez Sans groupe dans le panneau.

<a name="open-your-model"></a>
## Ouvrir votre modèle

1. Enregistrez une copie distincte du PBIX.
2. Lancez **Outils externes > Power Portal** depuis Power BI Desktop, ou recherchez et sélectionnez explicitement le fichier ouvert.
3. Ouvrez **Carte des relations** dans la barre latérale ou la galerie d’accueil.

Les projets BIM/PBIP/TMDL importés prennent en charge le diagramme et la personnalisation visuelle, mais **les écritures de relations nécessitent une connexion Power BI locale en direct**. Relisez le modèle après des modifications effectuées ailleurs.

<a name="understand-the-links"></a>
## Comprendre les liens

- Chaque bloc représente une table réelle. Le nom d’origine de la table reste visible sous son en-tête convivial.
- Les colonnes participant à des relations sont prioritaires dans le bloc. Huit colonnes sont affichées initialement ; **Afficher toutes les colonnes** déploie une liste défilante. Toutes les colonnes restent également disponibles dans l’éditeur.
- **1** identifie le côté unique ; **\*** identifie le côté multiple.
- Les lignes continues sont les relations actives ; les lignes en pointillés sont inactives.
- Les flèches indiquent la propagation des filtres : un sens unique TOM filtre **de la table de destination vers la table source**, et non dans l’ordre de sélection des colonnes. Les liens bidirectionnels affichent les deux sens. **?** désigne Automatic, où le moteur décide.
- Cliquez sur une ligne ou utilisez la liste déroulante des relations pour examiner ses extrémités exactes, sa cardinalité et ses paramètres de filtre.
- Les relations non prises en charge qui ne portent pas sur une seule colonne sont explicitement comptées dans les métadonnées du modèle et signalées dans l’interface. Elles ne sont ni inventées ni modifiées.

**Ce sont des relations de modèle sémantique, et non des sélections SQL INNER/LEFT/RIGHT JOIN.** La cardinalité et le sens du filtre influencent les calculs des rapports et la propagation des filtres.

<a name="arrange-a-teaching-friendly-diagram"></a>
## Organiser un diagramme pédagogique

- Déplacez librement les en-têtes de tables dans les deux directions.
- Faites glisser l’en-tête d’un groupe pour déplacer ses tables ensemble.
- Faites glisser l’arrière-plan pour déplacer la vue. Utilisez la molette ou **+ / -** pour zoomer.
- **Ajuster les tables** cadre le modèle actuel ; un nouveau diagramme est initialement ajusté automatiquement.
- **Organiser par groupes** dispose les tables selon leurs groupes affectés. Cela réorganise uniquement le diagramme, pas le modèle.
- Donnez le focus à un en-tête de table et utilisez les touches fléchées pour le déplacer de 10 unités ; Maj + flèche le déplace de 50 unités.
- Sélectionnez une table pour choisir son nom convivial, son icône, sa couleur de fond et son groupe.
- **Faits** et **Dimensions** sont des groupes de départ facultatifs, et non une classification automatique des rôles des tables.
- Créez des groupes personnalisés, puis modifiez leur nom, leur icône et leur couleur de fond. Supprimer un groupe ne supprime pas ses tables.
- Sélectionnez une relation existante pour choisir la couleur de sa ligne.

**Les couleurs, positions, groupes, icônes et noms conviviaux ne renomment pas les objets Power BI et ne changent pas la disposition de sa vue Modèle native.** Ils appartiennent à ce diagramme complémentaire.

<a name="save-and-share-the-organization"></a>
## Enregistrer et partager l’organisation

Les modifications visuelles sont enregistrées automatiquement dans le profil de l’utilisateur Windows actuel :

```text
%APPDATA%\powerportal-desktop\relationship-diagrams\<model-key>.json
```

Les écritures utilisent un fichier intermédiaire et un remplacement atomique. Un échec est affiché explicitement avec **Réessayer l’enregistrement** ; l’application ne prétend pas que la disposition a été enregistrée.

**Exporter le JSON du diagramme** crée un fichier portable de disposition visuelle. **Importer le JSON du diagramme** valide ce format et vérifie que ses noms de tables existent dans le modèle actuellement chargé. Seule l’organisation est restaurée : **l’import d’un diagramme ne crée, ne modifie et ne supprime jamais de relations du modèle**.

Le JSON inclut les noms de tables, les noms conviviaux, les paramètres des groupes, les couleurs des lignes et la zone de vue. Il ne contient ni lignes de données, ni DAX, ni identifiants de connexion aux sources. Les noms de tables/groupes peuvent toutefois révéler le contexte métier : ne partagez que des fichiers expurgés.

Les profils de modèles en direct sont identifiés à l’aide du nom de fenêtre/fichier Power BI et des balises de lignage des tables, avec repli sur les noms de tables. Les profils de projets importés utilisent aussi le chemin local sélectionné. La détection Power BI n’expose pas de façon fiable le chemin PBIX complet. Renommer un fichier ou remplacer les identités des tables peut créer un nouveau profil ; des copies ayant le même nom et les mêmes balises de lignage peuvent partager un profil. Utilisez le JSON exporté pour conserver des dispositions distinctes si nécessaire.

Les entrées de tables/lignes périmées sont supprimées lors de l’actualisation des métadonnées. L’ancienne position d’une table supprimée n’est pas conservée sous forme de table fictive. Les dispositions sont conservées à la désinstallation avec les autres paramètres utilisateur.

<a name="apply-each-relationship-edit-to-power-bi"></a>
## Appliquer chaque modification de relation à Power BI

![Champs de relation et actions Appliquer/Supprimer](../images/fr/relationship-editor.png)

<a name="create"></a>
### Créer

1. Choisissez **Nouvelle relation**.
2. Sélectionnez les tables et colonnes source/destination.
3. Définissez la cardinalité, le sens du filtre et l’état actif/inactif.
4. Choisissez **Appliquer la relation à Power BI**.

<a name="edit-activate-or-deactivate"></a>
### Modifier, activer ou désactiver

1. Cliquez sur une ligne existante ou choisissez-la dans la liste déroulante.
2. Modifiez les extrémités, les cardinalités, le sens du filtre ou **Active**.
3. Choisissez **Appliquer la relation à Power BI** pour cette modification.

<a name="delete"></a>
### Supprimer

Sélectionnez la relation existante et choisissez **Supprimer la relation dans Power BI**.

Chaque modification réelle utilise la même séquence sécurisée :

1. Une confirmation native identifie le fichier Power BI sélectionné et affiche les états précédent/nouveau de la relation. **Annuler est le choix par défaut**.
2. Après approbation, une sauvegarde BIM complète des métadonnées et un enregistrement local de la tentative doivent être écrits avant la modification du modèle.
3. Le connecteur rouvre le modèle et vérifie que la relation existante correspond toujours à l’instantané lu par l’éditeur. Les relations périmées/supprimées/renommées sont rejetées au lieu d’être écrasées.
4. Les colonnes doivent avoir des types de données identiques et appartenir à des tables différentes. Les paires de colonnes en double et un deuxième lien actif direct entre la même paire de tables sont rejetés. Désactivez d’abord le lien actif existant.
5. TOM valide via `SaveChanges` ; le moteur reste responsable de la validation de l’unicité, de la cardinalité et des chemins de filtre ambigus. Les erreurs du moteur sont affichées, pas contournées.
6. L’application recharge les métadonnées du modèle après une validation réussie. Un échec de rechargement est signalé comme une modification déjà écrite, et non comme une annulation.
7. **Enregistrez le PBIX dans Power BI Desktop** pour conserver le modèle modifié dans le fichier.

Le comportement des filtres de sécurité au niveau des lignes, **Supposer l’intégrité référentielle** et les autres paramètres non exposés des relations existantes sont préservés. Cet éditeur ne permet pas de modifier la RLS ou d’activer Supposer l’intégrité référentielle. Les nouveaux liens utilisent les paramètres de sécurité/d’intégrité par défaut.

Préserver ces propriétés ne signifie pas que l’activation, la suppression ou les changements d’extrémités ne peuvent pas affecter la propagation des filtres de sécurité. Examinez les relations utilisées par la RLS avec l’administrateur de votre modèle avant de confirmer une modification.

Les mises à jour/thèmes/écritures du modèle ne peuvent pas s’exécuter simultanément avec une écriture de relation. Le changement de modèle connecté pendant une écriture est bloqué ; les requêtes provenant d’une autre connexion sélectionnée sont rejetées.

<a name="backup-and-limits"></a>
## Sauvegarde et limites

- La sauvegarde BIM contient les métadonnées du modèle, pas un PBIX complet, le canevas du rapport ou toutes les lignes de données. Son chemin est indiqué après les écritures réussies ou les échecs du connecteur.
- **Il n’existe aucun bouton d’annulation automatique des relations/de restauration du modèle complet.** Conservez la copie PBIX distincte et examinez la sauvegarde indiquée avec l’administrateur de votre modèle si nécessaire.
- Le JSON du diagramme est limité à l’import à 5 Mo, 2 000 entrées de tables, 200 groupes et 10 000 entrées de style de ligne. Le zoom va de 15 % à 200 %.
- L’outil ne calcule pas de jointures SQL, ne fusionne pas de requêtes, ne classe pas automatiquement les faits/dimensions et n’exécute pas de scripts arbitraires.
- Les écritures Desktop en direct peuvent être limitées par le mode du modèle, la version de Desktop, les autorisations ou la politique de l’entreprise. Ne contournez pas ces restrictions.

[Configuration et données conservées](CONFIGURATION.md#data-locations) · [Dépannage](TROUBLESHOOTING.md)

<a name="column-to-column-editing-and-line-menu"></a>
## Modification de colonne à colonne et menu de ligne

Cliquez sur une colonne source puis sur une colonne d’une autre table, ou faites glisser entre les lignes de colonnes. Les deux doivent avoir le même type de données. L’éditeur sélectionne les extrémités exactes et affiche un brouillon orange en pointillés ; vérifiez la cardinalité, le sens du filtre et l’état actif, puis choisissez **Appliquer la relation à Power BI**. Le dessin seul n’écrit jamais dans le modèle. Appuyez sur Esc pour annuler. Sélectionner une paire de colonnes déjà reliées ouvre cette relation au lieu de la dupliquer.

Faites un clic droit sur une ligne de relation pour accéder à **Modifier la relation**, à sa couleur visuelle et à **Supprimer la relation dans Power BI**. La suppression nécessite toujours une confirmation native et une sauvegarde réussie des métadonnées ; une annulation ou une erreur laisse la relation inchangée. Les couleurs sont enregistrées localement, pas dans le diagramme natif de Power BI.

<a name="group-images-and-more-icons"></a>
## Images de groupe et davantage d’icônes

Sélectionnez une table affectée à un groupe, puis utilisez **Insérer une image de groupe** dans les paramètres du groupe. Choisissez un PNG/JPEG local de 10 Mo maximum et de 8192 pixels maximum par dimension. Il est décodé et normalisé en une miniature PNG de 384 pixels et 256 Ko maximum. **Supprimer l’image de groupe** la retire sans supprimer le groupe. Plus de 30 choix d’icônes sont disponibles pour les tables et les groupes.

Les images sont incorporées dans la disposition visuelle enregistrée/exportée, et non liées à un site web distant. Les SVG et les URL distantes ne sont pas acceptés. La limite totale des images incorporées en base64 est de 2,8 millions de caractères par diagramme ; la limite d’import existante de 5 Mo reste en vigueur. Ne partagez que des images non confidentielles. Faites glisser l’en-tête du groupe ou son arrière-plan dégagé pour déplacer ensemble les tables qui le composent.

<a name="automatic-date-tables-and-refreshing"></a>
## Tables de dates automatiques et actualisation

**Afficher les tables de date/heure automatiques** est décoché par défaut et enregistré par modèle. Les tables `LocalDateTable_` et `DateTableTemplate_` générées par Power BI sont identifiées à l’aide des annotations Power BI, avec un mécanisme de repli fondé sur le nom interne, l’état masqué et le type table calculée. Leurs liens sont également masqués. Les tables métier ordinaires restent visibles même si elles sont marquées comme masquées dans le modèle, comme dans le diagramme de modèle de Desktop.

**Actualiser le diagramme depuis Power BI** relit les tables, colonnes et relations du modèle sélectionné, retire les objets supprimés, ajoute les nouveaux et ajuste le canevas. Utilisez cette action après des modifications dans Power BI. Elle conserve vos groupes, couleurs et positions personnalisés encore présents. Elle ne copie ni les coordonnées natives de Desktop, ni les onglets personnalisés de la vue Modèle, ni la disposition : TOM ne fournit pas ces dispositions côté rapport. Les types de relations non pris en charge restent explicitement exclus.

<a name="native-automatic-relationship-detection"></a>
## Détection automatique native des relations

**Détecter automatiquement les relations** invoque la détection propre à Power BI Desktop, et non des suggestions de Power Portal fondées sur la correspondance des noms. Enregistrez d’abord une copie du PBIX : la détection native peut créer plusieurs liens et affecter les filtres ou la RLS.

1. Connectez-vous au modèle local souhaité et cliquez sur le bouton de détection.
2. Vérifiez la confirmation native de Power Portal. Annuler est le choix par défaut.
3. Une sauvegarde BIM des métadonnées et un journal de la tentative doivent être enregistrés avant l’automatisation.
4. Power Portal ouvre le gestionnaire de relations de Desktop et invoque son bouton natif de détection automatique à l’aide d’identifiants UI Automation vérifiés.
5. Examinez les résultats et toute confirmation supplémentaire directement dans Power BI ; Power Portal ne les ferme pas automatiquement.
6. Fermez les dialogues de relations de Power BI et cliquez sur **Terminer la détection et actualiser le diagramme** dans Power Portal.
7. Inspectez le diagramme actualisé et enregistrez le PBIX dans Desktop.

Le résultat initial signifie que **la détection a été lancée**, et non qu’elle a réussi ou créé des relations. Les écritures du modèle, les changements de projet/modèle et les mises à jour du programme d’installation restent bloqués jusqu’à ce que vous terminiez ; un dialogue natif ouvert empêche la finalisation. Les versions ou états de Desktop non pris en charge produisent des erreurs explicites avec le chemin de sauvegarde. Fermez les dialogues et utilisez l’action de finalisation pour récupérer après un échec d’automatisation. Si Power BI a été fermé, terminez son travail avant de redémarrer Power Portal et de vous reconnecter. Il n’existe aucune restauration automatique du modèle complet.

Les identifiants des contrôles natifs ont été inspectés dans une véritable fenêtre Desktop sans invoquer la détection automatique ni modifier le PBIX de son propriétaire. Les tests automatisés ont utilisé des modèles synthétiques et des résultats de détection simulés.
