# Recherche de mises à jour et installation automatique

<!-- language-selector -->
[🇺🇸 English](../UPDATES.md) · [🇧🇷 Português](../pt-BR/UPDATES.md) · [🇪🇸 Español](../es/UPDATES.md) · [🇨🇳 简体中文](../zh-CN/UPDATES.md) · [🇫🇷 Français](UPDATES.md) · [🇯🇵 日本語](../ja/UPDATES.md) · [🇮🇳 हिन्दी](../hi/UPDATES.md) · [🇸🇦 العربية](../ar/UPDATES.md)
<!-- /language-selector -->

[Retour à l’accueil](../../README.fr.md) · [Installation](INSTALLATION.md)

<a name="available-from-version-162"></a>
## Disponible à partir de la version 1.6.2

Installez **manuellement 1.6.2 une fois** si vous utilisez 1.6.1 ou une version antérieure. Les anciennes applications ne peuvent pas acquérir un nouvel outil de mise à jour sans installer d’abord la version qui le contient.

L’application **installée** recherche la dernière version publique stable dans `luisgnserra/powerportaldesktop` à son ouverture. Elle compare les versions numériques à trois parties, ignore les versions antérieures/actuelles et ne propose pas de builds en brouillon ou de préversions.

L’exécution de développement/depuis les sources ne télécharge et n’installe pas de mises à jour.

<a name="update-flow"></a>
## Déroulement de la mise à jour

1. Ouvrez Power Portal. Si internet est disponible, l’application recherche une version plus récente.
2. Si elle existe, une notification ambrée bien visible affiche la version et **Mettre à jour maintenant**. Elle reste visible pendant le défilement, avec une douce animation lumineuse ; les préférences de réduction des animations la désactivent. Le bouton de recherche est également mis en évidence.
3. **Enregistrez/exportez les modifications des outils non envoyées** avant de continuer. Les écritures/thèmes du modèle déjà en cours bloquent la mise à jour.
4. Cliquez sur **Mettre à jour maintenant**. La simple ouverture de l’application ou recherche de mises à jour ne déclenche aucune installation.
5. Le processus principal télécharge le programme d’installation x64 officiel en HTTPS et vérifie sa taille exacte et son SHA-256 par rapport aux métadonnées publiées du fichier de la version GitHub.
6. Windows demande l’autorisation administrateur. N’acceptez que si vous faites confiance à cette distribution.
7. Après l’autorisation/le lancement du programme d’installation, Power Portal se ferme et l’installation s’exécute silencieusement dans le **dossier d’installation existant**. **Power BI Desktop n’est pas fermé.**
8. Rouvrez Power Portal une fois l’installation terminée. Redémarrez Desktop si son ruban/enregistrement doit être rechargé.

![Notification de mise à jour et bouton Mettre à jour maintenant contrôlé par l’utilisateur](../images/fr/update-available.png)

La capture est une **notification simulée d’une future version 1.7.2** dans 1.7.1, montrant uniquement l’interface. Ce n’est pas une annonce de 1.7.2.

<a name="receive-version-171-from-an-earlier-updater-enabled-version"></a>
### Recevoir la version 1.7.1 depuis une version antérieure disposant de l’outil de mise à jour

Avec **1.6.2, 1.6.3 ou 1.6.4** installé, rouvrez l’application ou cliquez sur **Rechercher des mises à jour**. La version stable publiée **1.7.1** devrait apparaître avec **Mettre à jour maintenant**. N’installez pas d’abord 1.7.1 manuellement si vous souhaitez observer cette notification. Les versions antérieures à 1.6.4 utilisent leur bannière d’origine ; le style visuel bien visible est conservé en 1.7.1. Cliquez sur le bouton de mise à jour lorsque vous êtes prêt et acceptez l’autorisation Windows.

L’application signale le lancement du programme d’installation, pas une installation terminée et vérifiée : l’installation se termine après la fermeture de l’ancienne application. Vérifiez la version affichée après réouverture. Windows peut encore bloquer le programme d’installation non signé ou exiger une approbation du service informatique.

<a name="checks-retries-and-failures"></a>
## Vérifications, nouvelles tentatives et échecs

**Rechercher des mises à jour**, dans les actions du haut, relance manuellement la vérification. Il n’existe ni boucle d’interrogation en arrière-plan ni installation forcée.

En 1.6.4, une vérification réussie ne trouvant aucune version plus récente ne laisse pas une bannière « à jour » occuper une ligne. Les erreurs et les mises à jour disponibles restent visibles.

- Les erreurs hors ligne, de pare-feu/proxy ou de limite de requêtes de l’API GitHub apparaissent dans l’avis de mise à jour ; les outils locaux restent utilisables.
- Les métadonnées de version invalides, l’absence d’empreinte du fichier, une somme de contrôle incorrecte, des hôtes de redirection inattendus, une taille de téléchargement excessive ou des délais expirés empêchent l’exécution.
- L’annulation de l’autorisation Windows laisse l’application disponible et affiche une erreur. Réessayez lorsque vous êtes prêt.
- Une vérification échouée efface l’ancienne proposition de mise à jour disponible pour éviter l’utilisation silencieuse de données périmées.
- L’outil de mise à jour bloque les nouvelles écritures dans le modèle pendant le téléchargement/l’installation et refuse de démarrer pendant une opération active d’écriture/de thème.
- Les modifications de formulaires d’outils qui n’ont pas été envoyées/exportées ne sont pas automatiquement conservées lors du remplacement de l’application. Exportez/enregistrez d’abord.

<a name="privacy-network-and-integrity"></a>
## Confidentialité, réseau et intégrité

Les requêtes de mise à jour ne contiennent que les métadonnées standard de requête HTTPS vers GitHub, pas les noms du modèle local, le DAX, les données, le contenu PBIX ni les identifiants. Aucun compte/jeton GitHub n’est requis pour les versions publiques.

Les métadonnées de version proviennent de :

```text
https://api.github.com/repos/luisgnserra/powerportaldesktop/releases/latest
```

Les URL d’installation doivent correspondre au fichier versionné exact de la version dans ce dépôt. Les redirections HTTPS sont limitées à GitHub et à ses hôtes officiels de fichiers de versions. L’application conserve l’empreinte/la taille des métadonnées pour ce téléchargement.

Les vérifications ont un délai total de 30 secondes et une limite de métadonnées de 1 Mo. Les téléchargements ont une limite totale de 20 minutes, un délai d’inactivité du socket de 30 secondes et une taille maximale acceptée de 1 Go pour le programme d’installation. Ce sont des bornes, pas la taille normale du paquet.

Les téléchargements sont stockés dans `%APPDATA%\powerportal-desktop\updates`. Les fichiers partiels sont supprimés lors des échecs gérés ; un EXE vérifié peut rester après l’installation. Aucun code source de l’application n’est téléchargé ou compilé.

**Le SHA-256 est un contrôle d’intégrité, pas une signature numérique de l’éditeur.** La version actuelle n’est pas signée. L’outil de mise à jour ne contourne ni l’UAC, ni SmartScreen, ni les politiques de l’entreprise. Si votre réseau exige un proxy que l’outil ne peut pas utiliser, consultez le service informatique ou installez manuellement l’EXE vérifié de la version.

<a name="manual-fallback"></a>
## Solution manuelle de secours

Utilisez la [dernière version](https://github.com/luisgnserra/powerportaldesktop/releases/latest) ou l’[assistant PowerShell versionné](INSTALLATION.md#command-line-installation). Les commandes d’assistant existantes figées à une version installent intentionnellement leur version fixée, et non la dernière version future.
