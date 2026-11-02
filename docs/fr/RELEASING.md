# Maintenance des versions de distribution

<!-- language-selector -->
[🇺🇸 English](../RELEASING.md) · [🇧🇷 Português](../pt-BR/RELEASING.md) · [🇪🇸 Español](../es/RELEASING.md) · [🇨🇳 简体中文](../zh-CN/RELEASING.md) · [🇫🇷 Français](RELEASING.md) · [🇯🇵 日本語](../ja/RELEASING.md) · [🇮🇳 हिन्दी](../hi/RELEASING.md) · [🇸🇦 العربية](../ar/RELEASING.md)
<!-- /language-selector -->

[Retour à l’accueil](../../README.fr.md)

Ce dépôt est exclusivement consacré à la distribution. **Chaque modification de l’application doit être livrée avec une version actualisée du programme d’installation et la documentation correspondante**, afin que les liens de téléchargement, les captures et le comportement ne divergent pas.

<a name="required-release-checklist"></a>
## Liste de contrôle obligatoire pour une version

1. Compilez/testez l’application dans son arbre de travail privé. Ne copiez et ne poussez jamais cet arbre source dans ce dépôt.
2. Incrémentez la version de l’application/du programme d’installation. Utilisez un nouveau tag immuable tel que `v1.6.2` ; ne remplacez pas l’exécutable d’une ancienne version par des octets différents.
3. Calculez le SHA-256 et la taille du **programme d’installation final testé**.
4. Mettez à jour `release.json`, `SHA256SUMS.txt` et la version/l’empreinte figées dans `install.ps1`.
5. Mettez à jour README et les commandes d’installation, les instructions pertinentes d’utilisation/configuration/dépannage et CHANGELOG dans les huit langues de documentation. Conservez l’anglais comme README principal, avec des liens à drapeaux vers `README.pt-BR.md`, `README.es.md`, `README.zh-CN.md`, `README.fr.md`, `README.ja.md`, `README.hi.md` et `README.ar.md`. Les guides traduits se trouvent dans le dossier `docs/<locale>/` correspondant. Ne traduisez pas les commandes, empreintes, noms de fichiers, identifiants de modèle ou valeurs d’énumération des API.
6. Capturez les écrans de l’application concernés depuis le nouveau paquet dans les huit langues, avec des données synthétiques non confidentielles. Les images anglaises se trouvent dans `docs/images/` ; celles des autres langues dans `docs/images/<locale>/`. Actualisez chaque guide illustré et définissez `screenshotsVersion` dans `release.json` sur la version de l’application. L’image authentique originale du ruban Power BI reste en portugais ; expliquez-le au lieu de réétiqueter faussement Power BI. Ne publiez jamais de noms/données de modèles réels ni de captures exposant des identifiants.
7. Examinez la liste exacte des fichiers suivis autorisés. Le contenu autorisé comprend la documentation, les captures PNG, l’assistant/la configuration d’installation et la validation de distribution. Aucun code source de l’application, fichier de projet, fichier de modèle, identifiant ou dépendance de développement.
8. Exécutez la validation de distribution localement. GitHub Actions valide aussi la liste autorisée/les métadonnées lorsque l’exécution hébergée est disponible pour le compte.
9. Validez et poussez les changements de distribution uniquement, puis créez une version en **brouillon** avec le nouveau programme d’installation, la somme de contrôle et l’assistant comme fichiers joints.
10. Comparez la taille/l’empreinte du fichier téléversé au programme d’installation local, puis publiez comme dernière version.
    L’outil de mise à jour intégré exige le fichier EXE versionné correspondant avec un état `uploaded`, une taille positive bornée et une empreinte GitHub `sha256:`. N’omettez jamais ces contrôles et ne publiez pas une préversion/un brouillon comme canal de mise à jour stable.
11. Testez l’assistant public versionné avec `-DownloadOnly`, sans identifiants. Vérifiez le SHA-256 obtenu et l’URL de la dernière version avant d’annoncer la fin.
12. Validez les huit sélecteurs de langue, les liens locaux/ancres de titres et les PNG localisés. Les traductions documentaires seules peuvent être publiées sur `main` sans changer les octets du programme d’installation ni créer une nouvelle version de l’application ; ne déplacez jamais un tag de version existant.

Les utilisateurs finaux téléchargent l’EXE depuis les **Release assets**. Les gros binaires d’installation n’ont pas leur place dans l’arbre Git. Les archives source automatiques ne contiennent que le dépôt de distribution, pas les sources de l’application.

Conservez les anciennes versions et les URL d’assistants figées à une version. `releases/latest` dirige les nouveaux visiteurs vers la version actuelle ; les anciennes commandes versionnées conservent intentionnellement leur version d’origine.

<a name="if-hosted-validation-is-unavailable"></a>
## Si la validation hébergée est indisponible

N’affirmez pas que le travail GitHub Actions a réussi. Exécutez localement la même étape de validation PowerShell, signalez honnêtement la restriction de l’exécuteur hébergé et conservez le workflow pour une utilisation ultérieure. Une restriction de l’exécuteur hébergé ne bloque pas à elle seule le téléchargement des fichiers de versions publiques.
