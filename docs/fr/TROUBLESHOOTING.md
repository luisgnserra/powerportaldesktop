# Dépannage et assistance

<!-- language-selector -->
[🇺🇸 English](../TROUBLESHOOTING.md) · [🇧🇷 Português](../pt-BR/TROUBLESHOOTING.md) · [🇪🇸 Español](../es/TROUBLESHOOTING.md) · [🇨🇳 简体中文](../zh-CN/TROUBLESHOOTING.md) · [🇫🇷 Français](TROUBLESHOOTING.md) · [🇯🇵 日本語](../ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](../hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](../ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

[Retour à l’accueil](../../README.fr.md)

| Problème | Action recommandée |
|---|---|
| Power Portal est absent des outils externes | Terminez l’installation en tant qu’administrateur, fermez/rouvrez Desktop et vérifiez l’[emplacement de l’enregistrement](CONFIGURATION.md#external-tools-registration). Réparez-le en relançant le programme d’installation officiel. |
| Aucun ruban Outils externes | Vérifiez votre édition/version de Power BI Desktop avec le service informatique. Ce paquet cible les éditions Desktop prenant en charge les outils externes, pas Service ni Report Server. |
| L’outil externe ne s’ouvre plus | Redémarrez Desktop ; l’exécutable installé a pu être déplacé ou bloqué. Réinstallez pour réparer son chemin. Ne supprimez pas manuellement le `--` initial des arguments d’enregistrement. |
| Aucun modèle chargé / échec de connexion | Ouvrez un PBIX dans Desktop et lancez depuis les outils externes, ou choisissez **Rechercher les modèles ouverts**. Reconnectez-vous après un redémarrage de Desktop ; les anciens ports locaux expirent. |
| Mauvais nom de fichier / plusieurs modèles | Sélectionnez explicitement le modèle ouvert voulu et vérifiez la cible de la confirmation avant d’écrire. Les titres de fenêtre peuvent omettre le chemin complet. |
| Échec d’import d’un PBIX brut | Ouvrez le PBIX dans Power BI et connectez-vous localement. Utilisez BIM/PBIP/TMDL/ZIP pour les imports de fichiers en lecture seule pris en charge. |
| La boîte de dialogue du thème apparaît toujours | C’est normal : l’import de thème Desktop utilise une automatisation visible de l’interface. Aucune API générique de thème sans boîte de dialogue n’est prise en charge pour cette version. |
| Échec de l’automatisation du thème | Conservez le JSON généré, vérifiez la fenêtre cible, évitez toute interaction pendant l’import et utilisez le menu Thèmes de Power BI pour importer manuellement. Signalez l’erreur exacte et la version de Desktop sans téléverser le PBIX. |
| Le thème existant n’a pas été chargé avec le modèle | Enregistrez le JSON du thème actuel dans Desktop et importez-le dans le générateur de thèmes. TOM ne peut pas lire le thème du rapport. |
| La mesure HTML existe mais aucun visuel n’apparaît | Ajoutez un visuel HTML compatible et affectez-lui la mesure manuellement. |
| Le calendrier n’a pas encore de lignes | Actualisez le modèle dans Desktop, puis relisez-le. Vérifiez le DAX/la plage de dates. |
| Annulation du calendrier refusée | La table a changé ou possède des dépendances. Ne forcez pas sa suppression ; utilisez la copie PBIX enregistrée ou demandez de l’aide avec la sauvegarde des métadonnées. |
| La langue ne change pas après réinstallation | Le choix enregistré d’un utilisateur existant prévaut sur la valeur par défaut de l’installation. Changez le drapeau de la barre latérale. |
| Configuration invalide de langue par défaut | Fermez l’application et demandez à un administrateur de corriger `powerportal-defaults.json` pour obtenir un JSON UTF-8 valide avec un code pris en charge. |
| Le script PowerShell est bloqué | Examinez-le et suivez la stratégie d’exécution de votre organisation. Vous pouvez aussi utiliser l’assistant EXE. Ne désactivez pas les contrôles de l’entreprise. |
| `-Silent` demande PowerShell administrateur | Fermez ce terminal et lancez PowerShell avec **Exécuter en tant qu’administrateur**, puis réessayez. |
| Le SHA-256 ne correspond pas | **N’exécutez pas le fichier.** Supprimez/déplacez le téléchargement invalide, récupérez à nouveau le fichier officiel et comparez-le à la somme de contrôle publiée. |
| Échec de téléchargement GitHub | Vérifiez la connectivité, les restrictions de proxy/pare-feu et l’URL de la version. Le service informatique peut distribuer l’EXE vérifié par un canal approuvé. |
| PowerShell signale une erreur de connexion sous-jacente/d’envoi TLS | Utilisez la ligne TLS 1.2 documentée avant de récupérer l’assistant dans Windows PowerShell, puis réessayez. L’outil de mise à jour de l’application native utilise déjà HTTPS/TLS indépendamment. |
| SmartScreen/éditeur inconnu | 1.7.5 n’est pas signé. Vérifiez la somme de contrôle et la provenance de l’éditeur ; consultez le service informatique si votre appareil bloque les programmes non signés. |
| L’éditeur de relations est en lecture seule | L’import d’un projet permet uniquement l’organisation visuelle. Connectez-vous à un modèle Power BI local en direct pour créer/modifier/supprimer des relations. |
| La relation a changé depuis sa lecture | Relisez le modèle Power BI et examinez le lien actualisé. Les modifications périmées sont rejetées pour éviter d’écraser une autre modification. |
| Relation en double ou deuxième relation active | Utilisez des paires de colonnes distinctes, ou désactivez la relation active actuelle entre ces tables avant d’en activer une autre. |
| Erreur de type/d’unicité/d’ambiguïté de relation | Faites correspondre les types de données des colonnes et examinez les clés/chemins de filtre dans Desktop. TOM/Power BI valide le modèle ; ne contournez pas l’erreur. |
| Échec d’enregistrement du diagramme | Vérifiez l’espace disque et les droits d’écriture dans le profil de l’application, puis utilisez Réessayer l’enregistrement. Exportez une copie JSON distincte si nécessaire. |
| Diagramme différent après renommage/copie du PBIX | Les profils utilisent les noms de fenêtre/fichier et les balises de lignage des tables ; les noms/identités peuvent changer ou entrer en collision entre copies. Importez votre disposition exportée dans le modèle voulu. |
| Les mises à jour ne sont pas recherchées au démarrage | Les versions 1.6.1 et antérieures nécessitent une mise à niveau manuelle unique vers 1.6.2. L’exécution de développement/depuis les sources ne met délibérément pas à jour. |
| Échec de recherche de mises à jour/hors ligne/HTTP 403 ou 429 | Les outils locaux restent disponibles. Vérifiez internet/proxy/pare-feu et réessayez **Rechercher des mises à jour**. Les limites de requêtes de l’API GitHub peuvent s’appliquer. |
| Mettre à jour maintenant échoue lors de la vérification de la somme ou de la taille | Le programme d’installation n’a pas été exécuté. Réessayez ou téléchargez manuellement la version officielle ; n’exécutez pas un fichier de cache corrompu. |
| L’autorisation Windows a été annulée | Power Portal reste disponible. Réessayez **Mettre à jour maintenant** lorsque vous êtes prêt à accepter l’UAC, ou demandez l’autorisation d’installation au service informatique. |
| La mise à jour est bloquée par une opération active du modèle | Attendez la fin de l’opération confirmée d’écriture/de thème, puis réessayez. Enregistrez/exportez les modifications non envoyées avant la mise à jour. |
| Aucun avis de connexion au démarrage | La détection nécessite un modèle sémantique local ouvert, et non simplement l’écran d’accueil de Desktop. Utilisez **Rechercher les modèles ouverts** après avoir ouvert un PBIX. En cas d’échec, vérifiez l’erreur visible et reconnectez-vous. |
| Le programme d’installation ne peut pas fermer l’application en cours | Enregistrez votre travail, fermez Power Portal manuellement et réessayez. Seul l’exécutable installé exact est ciblé. Power BI n’est pas fermé. |
| Le bouton e-mail ne fait rien | Configurez un client de messagerie par défaut, utilisez **Copier l’adresse e-mail** ou écrivez manuellement à l’adresse ci-dessous. |
| Le rapport TV en ligne ne peut pas se connecter/se charger | Vérifiez le compte Microsoft, les autorisations du rapport, la licence, les restrictions d’intégration et l’accès internet. Utilisez des images locales pour TV hors ligne. |

<a name="contact-support"></a>
## Contacter l’assistance

Écrivez à **[contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)** ou [contactez Excelência sur WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0).

Indiquez :

- La version de Power Portal (1.7.5 pour cette publication).
- La version de Windows et la version/édition de Power BI Desktop.
- La méthode d’installation (assistant ou PowerShell).
- Les étapes de reproduction et l’erreur visible exacte.
- Si un ou plusieurs modèles étaient ouverts.

**Ne publiez jamais de fichiers PBIX/BIM, détails de connexion des sources, identifiants, données confidentielles ou sauvegardes/journaux de modifications non expurgés dans des tickets publics.** Les captures peuvent aussi révéler des noms ou des données ; masquez-les avant de les partager.

Pour les questions de déploiement et les sujets confidentiels, utilisez l’adresse e-mail d’assistance plutôt qu’un ticket public.
