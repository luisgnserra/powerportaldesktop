# Mantenimiento de versiones de distribución

<!-- language-selector -->
[🇺🇸 English](../RELEASING.md) · [🇧🇷 Português](../pt-BR/RELEASING.md) · [🇪🇸 Español](RELEASING.md) · [🇨🇳 简体中文](../zh-CN/RELEASING.md) · [🇫🇷 Français](../fr/RELEASING.md) · [🇯🇵 日本語](../ja/RELEASING.md) · [🇮🇳 हिन्दी](../hi/RELEASING.md) · [🇸🇦 العربية](../ar/RELEASING.md)
<!-- /language-selector -->

[Volver al inicio](../../README.es.md)

Este es un repositorio dedicado exclusivamente a la distribución. **Todo ajuste de la aplicación debe publicarse con una versión actualizada del instalador y su documentación correspondiente**, para evitar divergencias entre los enlaces de descarga, las capturas y el comportamiento.

<a name="required-release-checklist"></a>
## Lista de comprobación obligatoria para publicar una versión

1. Compile y pruebe la aplicación en su árbol de trabajo privado. Nunca copie ni suba ese árbol de código fuente a este repositorio.
2. Incremente la versión de la aplicación/instalador. Use una etiqueta inmutable nueva como `v1.6.2`; no sustituya el ejecutable de una versión antigua por otro con bytes diferentes.
3. Calcule SHA-256 y el tamaño del **instalador final probado**.
4. Actualice `release.json`, `SHA256SUMS.txt` y la versión/hash fijados en `install.ps1`.
5. Actualice README y los comandos de instalación, las instrucciones pertinentes de uso/configuración/solución de problemas y CHANGELOG en los ocho idiomas de documentación. Mantenga inglés como README principal, con enlaces de banderas a `README.pt-BR.md`, `README.es.md`, `README.zh-CN.md`, `README.fr.md`, `README.ja.md`, `README.hi.md` y `README.ar.md`. Las guías traducidas se encuentran en el directorio `docs/<locale>/` correspondiente. No traduzca comandos, hashes, nombres de archivos, identificadores del modelo ni valores de enumeraciones de API.
6. Capture las pantallas afectadas de la aplicación del nuevo paquete en los ocho idiomas con datos sintéticos no confidenciales. Las imágenes en inglés se encuentran en `docs/images/`; las de otros idiomas, en `docs/images/<locale>/`. Actualice cada guía ilustrada y establezca `screenshotsVersion` en `release.json` a la versión de la aplicación. La imagen auténtica original de la cinta de Power BI permanece en portugués; explíquelo en lugar de atribuir falsamente otro idioma a Power BI. Nunca publique nombres/datos de modelos reales ni capturas que expongan credenciales.
7. Revise la lista exacta de archivos permitidos bajo seguimiento. El contenido permitido es documentación, capturas PNG, asistente/configuración de instalación y validación de distribución. Nada de código fuente de la aplicación, archivos de proyecto, archivos de modelo, credenciales o dependencias de desarrollo.
8. Ejecute la validación de distribución localmente. GitHub Actions también valida la lista permitida/los metadatos cuando la ejecución alojada está disponible para la cuenta.
9. Confirme y suba los cambios exclusivos de distribución y cree una versión en **borrador** con el nuevo instalador, la suma de comprobación y el asistente como recursos.
10. Compare el tamaño/hash del recurso subido con el instalador local y, después, publique como última versión.
    El actualizador integrado requiere el recurso EXE versionado correspondiente con estado `uploaded`, tamaño positivo acotado y resumen `sha256:` de GitHub. Nunca omita estas comprobaciones ni publique una versión preliminar/borrador como canal estable de actualización.
11. Pruebe el asistente público versionado con `-DownloadOnly`, sin credenciales. Verifique el SHA-256 resultante y la URL de la última versión antes de anunciar que ha terminado.
12. Valide los ocho selectores de idioma, los enlaces locales/anclas de encabezados y los PNG traducidos. Las traducciones exclusivamente documentales pueden publicarse en `main` sin cambiar los bytes del instalador ni crear una nueva versión de la aplicación; nunca mueva una etiqueta de versión existente.

Los usuarios finales descargan el EXE de **Release assets**. Los binarios grandes del instalador no deben estar en el árbol de Git. Los archivos de código fuente automáticos contienen únicamente el repositorio de distribución, no el código fuente de la aplicación.

Mantenga disponibles las versiones antiguas y las URL de asistentes fijadas a una versión. `releases/latest` dirige a los nuevos visitantes a la versión actual; los comandos antiguos versionados conservan intencionadamente su versión original.

<a name="if-hosted-validation-is-unavailable"></a>
## Si no está disponible la validación alojada

No afirme que el trabajo de GitHub Actions se completó correctamente. Ejecute localmente el mismo paso de validación PowerShell, informe honestamente de la restricción del ejecutor alojado y conserve el flujo de trabajo para uso posterior. Una restricción del ejecutor alojado no bloquea por sí sola las descargas de recursos de versiones públicas.
