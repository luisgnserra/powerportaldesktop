# Power Portal Desktop

<!-- language-selector -->
[🇺🇸 English](README.md) · [🇧🇷 Português](README.pt-BR.md) · [🇪🇸 Español](README.es.md) · [🇨🇳 简体中文](README.zh-CN.md) · [🇫🇷 Français](README.fr.md) · [🇯🇵 日本語](README.ja.md) · [🇮🇳 हिन्दी](README.hi.md) · [🇸🇦 العربية](README.ar.md)
<!-- /language-selector -->

**Once herramientas para Power BI Desktop en una sola aplicación de Windows.**

Power Portal Desktop pertenece a **Excelência Consultoria e Educação**. Se instala en la cinta **Herramientas externas** de Power BI Desktop y abre una ventana de aplicación independiente, como otras herramientas externas de modelado.

Este es un **repositorio dedicado exclusivamente a la distribución**: instaladores, asistentes de instalación, sumas de comprobación y documentación. **Aquí no se publica el código fuente de la aplicación Power Portal.**

La introducción aparece en la primera visita al mapa de cada sesión. Ábrela de nuevo con **Cómo organizar con grupos**. SAP y Excel son ejemplos ilustrativos, no nuevos conectores ni logotipos oficiales. Los grupos vacíos son zonas de destino visibles. Soltar en un grupo resaltado asigna la tabla; fuera conserva su grupo actual.

El diagrama se guarda automáticamente en este equipo para el mismo modelo: grupos, imágenes, colores y posiciones. Exporta el JSON para guardar una copia o importarla después. Comprueba el mensaje de guardado.

Las flechas de relaciones ahora se sitúan sobre la curva y giran según su dirección local, incluso en enlaces diagonales o invertidos. Flechas SVG más grandes, de 36 × 26 unidades, siempre negras con un contorno blanco de 3 unidades, independientemente del color de la línea. El filtro unidireccional sigue del destino al origen; el bidireccional muestra dos flechas opuestas. El filtro automático conserva el signo de interrogación. Este cambio es solo visual.

<a name="download-and-install"></a>
## Descargar e instalar

<a name="option-1-install-with-a-few-clicks"></a>
### Opción 1: instalar con unos pocos clics

1. [Descargue Power Portal Desktop 1.7.3 para Windows x64](https://github.com/luisgnserra/powerportaldesktop/releases/download/v1.7.3/PowerPortal-Setup-1.7.3-x64.exe).
2. Ejecute el instalador y apruebe la solicitud de administrador de Windows.
3. Elija la carpeta de instalación y el idioma predeterminado.
4. Complete la instalación y, después, cierre y vuelva a abrir Power BI Desktop.
5. Abra un PBIX y seleccione **Herramientas externas > Power Portal**.

**Windows puede advertir que el editor es desconocido:** la versión 1.7.3 no está firmada digitalmente. Continúe únicamente si confía en esta distribución. Si su organización bloquea el software sin firma, contacte con TI en lugar de eludir su política.

[Última versión](https://github.com/luisgnserra/powerportaldesktop/releases/latest) · [Guía de instalación](docs/es/INSTALLATION.md) · [Configuración](docs/es/CONFIGURATION.md) · [Solución de problemas](docs/es/TROUBLESHOOTING.md)

<a name="launch-from-power-bis-external-tools-ribbon"></a>
### Iniciar desde la cinta Herramientas externas de Power BI

El instalador añade **Power Portal** a **Herramientas externas** de Power BI Desktop. Haga clic en el icono con su PBIX abierto para iniciar la aplicación complementaria y leer automáticamente el modelo local de ese archivo.

![Power Portal instalado en la cinta Herramientas externas de Power BI Desktop](docs/images/powerbi-external-tools.png)

La captura proporcionada de la cinta está en portugués: **Ferramentas externas** significa **Herramientas externas**. Power Portal abre una **ventana independiente conectada a Power BI**, no un objeto visual incrustado en el informe ni un nuevo panel interno de Power BI.

![Inicio de Power Portal 1.7.3, barra lateral completa y aviso de conexión al iniciar](docs/images/es/home.png)

**¿Ya tiene Power BI abierto?** Al iniciarse desde un acceso directo, Power Portal detecta los modelos locales abiertos y muestra un aviso de conexión. Elija **Buscar modelos abiertos**, seleccione su archivo y conéctese. Después podrá consultar sus datos y enviar los cambios compatibles de vuelta con confirmación.

Una vez conectado, el estado se resume en el encabezado en lugar de ocupar un aviso independiente.

[Vea las once herramientas, las pantallas de conexión y las acciones directas en Power BI en la guía ilustrada](docs/es/SCREENSHOTS.md).

<a name="new-relationship-map"></a>
### Novedad: mapa de relaciones

Comprenda los vínculos reales entre tablas en un lienzo que permite arrastrarlas libremente. Organice hechos, dimensiones y grupos de negocio personalizados con colores, iconos y nombres descriptivos; guarde las disposiciones automáticamente y exporte o importe JSON.

![Mapa de relaciones con grupos de hechos y dimensiones y edición de relaciones reales](docs/images/es/relationship-map.png)

Cree, edite, active/desactive y elimine relaciones en el modelo de Power BI conectado **tras confirmar y realizar una copia de seguridad de los metadatos**. El estilo visual permanece en Power Portal; no cambia los nombres de las tablas ni modifica la disposición nativa de Power BI. [Tutorial completo de relaciones](docs/es/RELATIONSHIPS.md).

En 1.7.3, haga clic o arrastre entre columnas exactas para preparar un vínculo; haga clic con el botón derecho en las líneas para cambiar su color, editarlas y eliminarlas con confirmación. Los grupos admiten imágenes locales y más de 30 iconos. Las tablas automáticas de fecha/hora se ocultan de forma predeterminada con un control de visibilidad. Actualice desde Power BI después de ediciones externas o invoque la detección automática nativa de Desktop con una copia de seguridad previa y un paso independiente de revisión/finalización.

<a name="built-in-update-checks"></a>
### Comprobación de actualizaciones integrada

A partir de **1.6.2**, la aplicación instalada comprueba la última versión oficial de GitHub al abrirse. Si existe una versión estable más reciente, muestra **Actualizar ahora**. En 1.6.4, el aviso es destacado, animado y permanece visible al desplazarse, respetando las preferencias de movimiento reducido. No se muestra una línea permanente de «actualizado». Haga clic para descargar, verificar SHA-256 y el tamaño e iniciar el instalador automáticamente.

Windows solicita autorización de administrador. Solo se cierra Power Portal; Power BI permanece abierto. Primero guarde o exporte las ediciones de las herramientas que aún no haya enviado. Las descargas fallidas o la autorización cancelada dejan un error explícito y una opción para reintentar.

![Aviso de nueva versión y botón Actualizar ahora](docs/images/es/update-available.png)

La captura utiliza un **aviso simulado de una futura versión 1.7.4** para ilustrar la interfaz, no para anunciar una versión publicada. **La versión 1.7.3 ya está publicada:** quienes tengan 1.6.2 o posterior pueden volver a abrir la aplicación o hacer clic en **Buscar actualizaciones** para recibirla. [Guía de actualizaciones](docs/es/UPDATES.md).

**¿Tiene 1.6.1 o anterior? Instale 1.6.2 manualmente una vez** para habilitar esta función. También puede usar **Buscar actualizaciones** para reintentar una comprobación fallida o sin conexión. El actualizador nunca instala nada por el mero hecho de abrir la aplicación.

<a name="option-2-install-from-powershell"></a>
### Opción 2: instalar desde PowerShell

Abra **Windows PowerShell 5.1 o PowerShell 7 en Windows**:

```powershell
$script = Join-Path $env:TEMP 'Install-PowerPortal.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/luisgnserra/powerportaldesktop/v1.7.3/install.ps1' -OutFile $script
# Review the downloaded script before running it.
Get-Content -LiteralPath $script
& $script
```

El asistente descarga la **versión 1.7.3**, verifica su suma SHA-256 fijada y abre el mismo instalador. No instala Node.js, PHP ni un SDK de .NET, ni compila nada.

Para una instalación desatendida, ejecute el mismo asistente desde una **ventana de PowerShell como administrador**:

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -Silent
```

Para descargar y verificar la suma de comprobación sin instalar:

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -DownloadOnly
```

Si la ejecución de scripts está bloqueada, siga la política de su organización o use el instalador ejecutable. Consulte las [instrucciones completas de línea de comandos](docs/es/INSTALLATION.md#command-line-installation).

<a name="requirements"></a>
## Requisitos

- Windows 10 u 11, **x64**.
- Power BI Desktop compatible con Herramientas externas. Esta instalación no es para Power BI Service, macOS, Windows ARM64 ni Power BI Report Server.
- Permiso de administrador para instalar y registrar la herramienta externa.
- Internet para descargar el instalador; las herramientas locales y las vistas previas incluidas funcionan sin conexión.
- Los informes de Power BI publicados o privados en TV Tool requieren internet y la cuenta de Microsoft, licencia y permisos correspondientes.

La aplicación de escritorio incluye los componentes de ejecución necesarios. No necesita herramientas de desarrollo.

<a name="included-tools"></a>
## Herramientas incluidas

| Herramienta | Función |
|---|---|
| Generador de temas | Importación JSON destacada, vista previa local en vivo, exportación JSON y envío directo con confirmación al final de la página. |
| TV Tool | Abrir un ejemplo oficial funcional en el navegador, presentar páginas de informes publicados o imágenes locales, configurar tiempos/transiciones y exportar HTML. |
| Generador de calendarios | Leer metadatos y fechas de calendarios existentes, exportar scripts o crear una tabla de calendario calculada con confirmación y copia de seguridad. |
| Lista de comprobación de rendimiento | Evaluar un informe con la lista del portal y los metadatos disponibles del modelo. |
| Biblioteca de componentes | Crear componentes HTML/DAX y una medida HTML en un modelo conectado. |
| Calculadora de contraste | Comprobar el contraste de colores según los umbrales de WCAG. |
| Analizador PBIP/PBIR | Examinar metadatos de proyectos locales, con puntuaciones heurísticas y los recuentos de páginas/objetos visuales disponibles. |
| Documentador de modelos | Exportar tablas, columnas, medidas y relaciones a Markdown o JSON. |
| Auditor de medidas | Revisar medidas del modelo o DAX proporcionado mediante comprobaciones heurísticas. |
| Formateador DAX | Formatear localmente, exportar/copiar o actualizar una medida seleccionada de un modelo conectado con confirmación. |
| Mapa de relaciones | Arrastrar cuadros de tablas, agrupar/dar estilo a los vínculos, guardar disposiciones visuales y aplicar cambios de relaciones confirmados directamente a Power BI. |

También incluye una galería de inicio, una barra lateral plegable con las once herramientas visibles sin desplazamiento a los tamaños de ventana compatibles, información sobre la propiedad y el desarrollo, y un área de consultoría y formación con los dos vídeos destacados. **Consultoría y formación** aparece debajo de **Acerca del desarrollo**.

<a name="changes-that-interact-directly-with-your-open-power-bi-file"></a>
### Cambios que interactúan directamente con su archivo abierto de Power BI

| Acción | Interacción directa |
|---|---|
| Actualizar/leer el modelo y consultar muestras | Lee el modelo local seleccionado; no lo edita. |
| Enviar tema directamente a Power BI | Importa el JSON del tema en la ventana de Desktop seleccionada mediante automatización visible de la interfaz, con confirmación y verificación. |
| Crear calendario en Power BI | Crea una tabla calculada nueva, con copia de seguridad de metadatos y confirmación. Actualice después en Desktop. |
| Crear medida HTML en Power BI | Crea una medida en la tabla seleccionada, con copia de seguridad y confirmación. Coloque manualmente un objeto visual HTML compatible. |
| Actualizar medida en Power BI | Actualiza el DAX de la medida seleccionada, con copia de seguridad, confirmación y comprobaciones de cambios simultáneos. |
| Crear/editar/eliminar relaciones en Power BI | Cambia relaciones entre columnas de tablas, cardinalidad, dirección del filtro y estado activo, con copia de seguridad, confirmación y comprobaciones de estado obsoleto. |

**Conectarse nunca escribe cambios por sí solo. Guarde primero una copia del PBIX, revise cada confirmación y guarde después el PBIX usted mismo.** [Capturas y ejemplos paso a paso](docs/es/SCREENSHOTS.md#direct-interactions-with-the-open-power-bi-file).

<a name="eight-languages"></a>
## Ocho idiomas

Portugués, inglés, español, chino mandarín simplificado, francés, japonés, hindi y árabe. Las banderas ocupan como máximo dos filas; el árabe utiliza una disposición de derecha a izquierda.

Use las banderas de la parte superior de esta página para seleccionar el idioma de la documentación. Todas las guías y capturas de la aplicación están disponibles en esos ocho idiomas. Las capturas se toman de la aplicación real en el idioma seleccionado; los nombres de los objetos del modelo y el DAX permanecen sin cambios. La imagen auténtica de la cinta de Power BI permanece en portugués en todas las guías, con una explicación en el idioma seleccionado.

El instalador sugiere el idioma de la interfaz de Windows. La selección posterior de idioma de cada usuario se guarda localmente y prevalece sobre el valor predeterminado de la instalación. Los nombres del modelo, los datos y el DAX no se traducen.

<a name="important-limits-and-data-safety"></a>
## Límites importantes y seguridad de los datos

- **Guarde una copia de su PBIX antes de hacer cambios.** Las escrituras confirmadas crean copias locales de los metadatos, pero no sustituyen a una copia de seguridad completa del PBIX.
- La aplicación de temas usa **automatización visible de la interfaz de Windows** y requiere confirmación. No existe una API genérica compatible para escribir temas en un PBIX abierto en Desktop; los cuadros de diálogo no se ocultan.
- TOM se conecta al modelo semántico, no a los filtros, páginas ni ubicación de objetos visuales del informe activo. Una medida HTML no añade automáticamente un objeto visual a un informe.
- Las puntuaciones del análisis de informes y de la auditoría de medidas son heurísticas, no mediciones del rendimiento visual.
- Los datos del modelo local no se envían al sitio web de Power Portal. El actualizador solicita únicamente metadatos e instaladores de versiones oficiales de GitHub, nunca el contenido del modelo. Los enlaces externos abiertos por el usuario, las presentaciones en línea y los orígenes DirectQuery pueden requerir acceso a la red.
- Las exportaciones de documentación, las copias de seguridad de metadatos y los registros de cambios pueden contener detalles confidenciales del modelo. Almacénelos y compártalos adecuadamente.

Lea la [guía de uso y seguridad](docs/es/USAGE.md) antes de modificar un modelo.

<a name="consulting-complete-data-solutions-and-training"></a>
## Consultoría, soluciones de datos completas y formación

Excelência ofrece consultoría de Power BI, Microsoft Fabric, ingeniería de datos, soluciones de datos integrales y **formación In Company**.

- [Concertar una conversación por WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0)
- Correo electrónico: [contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)
- [Formación In Company de Power BI](https://www.consultoriaexcelencia.com.br/educacao/treinamentos-power-bi)
- [Vídeo destacado 1](https://www.youtube.com/watch?v=bIxmIaYmt0c)
- [Vídeo destacado 2](https://www.youtube.com/watch?v=FNo7F7kh6h4)
- [Blog de Excelência](https://consultoriaexcelencia.com.br/blog) · [Cursos en línea](https://ead.consultoriaexcelencia.com.br/)

Responsable del desarrollo: **Luis Gustavo Nascimento Serra**.
[LinkedIn](https://www.linkedin.com/in/luisgnserra/) · [YouTube: Mais Que Planilhas](https://www.youtube.com/MaisQuePlanilhas)

Microsoft, Power BI y Microsoft Fabric son marcas comerciales de Microsoft. La identificación MVP es personal y no implica propiedad, patrocinio ni respaldo de Microsoft.

<a name="support-and-distribution"></a>
## Soporte y distribución

[Solución de problemas y soporte](docs/es/TROUBLESHOOTING.md) · [Notas de versión](CHANGELOG.es.md) · [Aviso de distribución](DISTRIBUTION.es.md) · [Mantenimiento de versiones](docs/es/RELEASING.md)

Use los **recursos de la versión (Release assets)** para descargar la aplicación. Los archivos ZIP/TAR automáticos de «Source code» de GitHub contienen únicamente la documentación y el asistente de instalación de este repositorio de distribución, no la aplicación ni su código fuente.
