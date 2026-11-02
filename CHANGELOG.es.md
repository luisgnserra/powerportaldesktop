# Notas de versión

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

<a name="174"></a>
## 1.7.4

- El encabezado animado de Power Portal ahora contiene el nombre del archivo, el estado de conexión y los cinco botones de lectura, importación, búsqueda y actualización. Se eliminó la barra separada debajo para liberar espacio. El contenido se adapta dentro del encabezado en ventanas pequeñas y en los ocho idiomas, incluido árabe. Se mantienen las confirmaciones, los avisos y las actualizaciones.

<a name="assets"></a>
### Recursos

- `PowerPortal-Setup-1.7.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="173"></a>
## 1.7.3

- Las flechas de relaciones ahora se sitúan sobre la curva y giran según su dirección local, incluso en enlaces diagonales o invertidos.
- Flechas SVG más grandes, de 36 × 26 unidades, siempre negras con un contorno blanco de 3 unidades, independientemente del color de la línea.
- El filtro unidireccional sigue del destino al origen; el bidireccional muestra dos flechas opuestas. El filtro automático conserva el signo de interrogación. Este cambio es solo visual.

<a name="assets-1"></a>
### Recursos

- `PowerPortal-Setup-1.7.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="172"></a>
## 1.7.2

- La introducción aparece en la primera visita al mapa de cada sesión. Ábrela de nuevo con **Cómo organizar con grupos**. SAP y Excel son ejemplos ilustrativos, no nuevos conectores ni logotipos oficiales. Los grupos vacíos son zonas de destino visibles. Soltar en un grupo resaltado asigna la tabla; fuera conserva su grupo actual.
- Separa las tablas por sistema, tema, hechos o dimensiones. Crea un grupo y arrastra la tabla por su título hasta él. El grupo de destino se resalta.
- El diagrama se guarda automáticamente en este equipo para el mismo modelo: grupos, imágenes, colores y posiciones. Exporta el JSON para guardar una copia o importarla después. Comprueba el mensaje de guardado.
- La organización visual no modifica tablas, fuentes de datos ni el diseño nativo de Power BI. Para quitar una tabla del grupo, selecciona Sin grupo en el panel.

<a name="assets-2"></a>
### Recursos

- `PowerPortal-Setup-1.7.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="171"></a>
## 1.7.1

- Prepare relaciones haciendo clic o arrastrando entre extremos de columnas exactos; revise un borrador naranja discontinuo y aplíquelo con confirmación y copia de seguridad. Los pares existentes se abren para editarlos en lugar de crear duplicados.
- Menú de línea con el botón derecho para editar, elegir colores locales y eliminar con confirmación.
- Más de 30 iconos de tablas/grupos, imágenes PNG/JPEG locales de grupo y arrastre del fondo del grupo. Las imágenes se normalizan e incrustan en los diagramas guardados/exportados.
- Las tablas automáticas de fecha/hora de Power BI se ocultan de forma predeterminada con un control de visibilidad guardado; las tablas de negocio normales ocultas siguen visibles. Expanda cualquier tabla para seleccionar todas sus columnas.
- Actualice el diagrama desde Power BI después de ediciones externas conservando la personalización visual que sigue existiendo.
- Detección automática nativa de Desktop con confirmación previa, copia de seguridad BIM y un flujo explícito de finalización/revisión; las escrituras simultáneas del modelo, los cambios de modelo/proyecto y las actualizaciones siguen bloqueados hasta finalizar.
- Documentación en ocho idiomas y las 19 capturas de la aplicación por idioma actualizadas para 1.7.1. La imagen auténtica de la cinta de Power BI sigue compartida en portugués.

<a name="assets-3"></a>
### Recursos

- `PowerPortal-Setup-1.7.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="170"></a>
## 1.7.0

- Nuevo **Mapa de relaciones** exclusivo de Desktop, la undécima herramienta: cuadros de tablas arrastrables, desplazamiento/zoom, indicadores de cardinalidad/dirección del filtro y vínculos inactivos discontinuos.
- Grupos personalizados de hechos/dimensiones/negocio con nombres, iconos, colores y arrastre conjunto. Encabezados de tabla descriptivos y líneas de relaciones de colores.
- Guardado automático de la disposición visual por modelo e importación/exportación JSON validada, con errores de guardado visibles y reintento. Las propiedades visuales no cambian los nombres de los objetos del modelo ni alteran el diagrama nativo de Power BI.
- Creación, edición, activación/desactivación y eliminación de relaciones mediante TOM en vivo. Cada edición requiere confirmación nativa explícita, copia de seguridad de metadatos y protección frente a estados obsoletos; se conservan los ajustes existentes de RLS/integridad.
- Los proyectos importados siguen siendo de solo lectura; las relaciones no compatibles y los fallos de validación del motor se indican explícitamente.
- Interfaz en ocho idiomas, barra lateral compacta de once elementos sin desplazamiento, instalador actualizado y guías en inglés con 20 capturas.

<a name="assets-4"></a>
### Recursos

- `PowerPortal-Setup-1.7.0-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="164"></a>
## 1.6.4

- Un ejemplo destacado de TV Tool en la parte superior abre el panel oficial funcional en el navegador predeterminado; las diapositivas ilustrativas locales siguen disponibles.
- El aviso de actualización disponible tiene colores más intensos, un texto de versión más grande, un aviso fijo y una animación suave que respeta las preferencias de movimiento reducido.
- Sin línea permanente de «actualizado». El estado conectado es compacto en el encabezado, con el recordatorio de copiar el PBIX en su información sobre herramientas.
- La importación de temas JSON está destacada; **Enviar tema directamente a Power BI** está ahora al final de la página. Se eliminaron párrafos explicativos redundantes de la herramienta, conservando la confirmación nativa y las limitaciones documentadas de la automatización.
- Todo el texto nuevo es compatible con ocho idiomas. Se actualizaron el instalador, el asistente, la suma de comprobación y 18 capturas, incluida la acción de temas al final de la página.

<a name="assets-5"></a>
### Recursos

- `PowerPortal-Setup-1.6.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="163"></a>
## 1.6.3

- Incremento de la versión estable para permitir que los usuarios de 1.6.2 prueben el aviso real de actualización y el flujo de **Actualizar ahora**.
- Sin cambios funcionales; incluye el mismo actualizador basado en el consentimiento y diez herramientas.
- Instalador/suma de comprobación/asistente, documentación y capturas renovados para 1.6.3.

Mantenga 1.6.2 instalado para probarlo: vuelva a abrir la aplicación o haga clic en **Buscar actualizaciones**. Elija **Actualizar ahora** solo cuando esté listo para instalar. El responsable de mantenimiento no actualizó la instalación local del usuario durante la publicación.

<a name="assets-6"></a>
### Recursos

- `PowerPortal-Setup-1.6.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="162"></a>
## 1.6.2

- Comprobación al inicio de la última versión estable oficial de GitHub en la aplicación instalada.
- **Actualizar ahora** descarga y verifica el EXE x64 exacto usando el resumen SHA-256 y el tamaño del recurso de GitHub, y después inicia un instalador silencioso con elevación en la carpeta de instalación actual.
- La instalación solo se realiza tras el clic del usuario y la autorización de Windows. Power BI no se cierra; se muestran advertencias sobre ediciones no enviadas.
- Protección de concurrencia entre actualizaciones y escrituras en el modelo, descargas HTTPS acotadas, errores explícitos de conexión/suma de comprobación/UAC y controles de reintento.
- Aviso en ocho idiomas, **Buscar actualizaciones** manual, capturas renovadas y guía de actualizaciones en inglés.

La aplicación sigue sin firma. Instale 1.6.2 manualmente una vez si tiene 1.6.1 o anterior. Vuelva a abrir Power Portal cuando termine una actualización.

<a name="assets-7"></a>
### Recursos

- `PowerPortal-Setup-1.6.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

Se validaron las comparaciones de versiones, la validación de versiones oficiales, el rechazo por hash/tamaño durante la descarga en flujo, la limpieza de archivos parciales, los argumentos de inicio del instalador, el consentimiento/localización/comportamiento de errores de la interfaz y el registro empaquetado. Durante las pruebas automatizadas no se realizó ninguna actualización real de la aplicación ni escritura en modelos de clientes.

<a name="161"></a>
## 1.6.1

- El catálogo de la barra lateral cabe en la altura de ventana compatible sin barra de desplazamiento de navegación, en los ocho idiomas y en los modos expandido/contraído.
- **Consultoría y formación** se trasladó debajo de **Acerca del desarrollo**, encima de los logotipos de propiedad.
- El aviso de inicio detecta los modelos abiertos de Power BI disponibles cuando la aplicación se inicia de forma independiente y ofrece una conexión explícita.
- El aviso de conexión explica las consultas y los cambios confirmados, con un recordatorio de copiar el PBIX y un botón de actualización del modelo.
- La documentación ilustrada en inglés cubre la cinta Herramientas externas, cada herramienta, la selección de modelos, las consultas y los botones de envío directo.
- El instalador actualizado, el asistente PowerShell fijado a la versión, las sumas de comprobación y el manifiesto de versión permanecen sincronizados.

Se validó la barra lateral a alturas de ventana de 680, 768 y 900 píxeles en ocho idiomas, el inicio/selección/actualización sin escrituras en el modelo y el registro empaquetado/cierre mediante el instalador. Las capturas de documentación usan datos sintéticos; no se cambió ningún archivo de cliente.

<a name="assets-8"></a>
### Recursos

- `PowerPortal-Setup-1.6.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

La aplicación sigue sin firma. El envío directo de temas sigue usando automatización visible de la interfaz de Desktop. Consulte la [guía ilustrada](docs/es/SCREENSHOTS.md) y la [guía de uso y seguridad](docs/es/USAGE.md).

<a name="160"></a>
## 1.6.0

Primera versión pública del instalador en este repositorio dedicado exclusivamente a la distribución.

- Área de consultoría para Power BI, Microsoft Fabric, ingeniería de datos y soluciones de datos completas.
- Enlace de formación In Company, dos vídeos destacados, acciones de contacto por WhatsApp/correo electrónico y opción para copiar el correo.
- Ocho idiomas incluidos: portugués, inglés, español, chino mandarín simplificado, francés, japonés, hindi y árabe.
- Preferencia de idioma guardada por usuario, banderas en dos filas y disposición de derecha a izquierda para el árabe.
- Selección de idioma del instalador con banderas y sugerencia del idioma de la interfaz de Windows.
- Las diez herramientas existentes, galería de inicio, navegación plegable, información de propiedad/desarrollo e integración con modelos locales.
- Envío de temas confirmado mediante automatización visible de la interfaz de Windows; se conserva la exportación/verificación del tema actual.
- Documentación en inglés de instalación/configuración/seguridad/solución de problemas y asistente PowerShell de instalación con verificación de suma de comprobación.

<a name="distribution-assets"></a>
### Recursos de distribución

- `PowerPortal-Setup-1.6.0-x64.exe` — instalador NSIS para Windows x64.
- `SHA256SUMS.txt` — suma de comprobación del instalador.
- `install.ps1` — asistente de descarga/instalación fijado a la versión.

<a name="known-limitations"></a>
### Limitaciones conocidas

El instalador no está firmado. El envío de temas sigue usando el cuadro de importación visible de Desktop. No se pueden colocar objetos visuales del informe mediante TOM. Las escrituras de calendarios requieren actualización en Desktop. No se proporciona un actualizador automático, una entrada de catálogo winget/Chocolatey, MSI ni paquetes para macOS, ARM64 o Report Server.

No se modificó ningún modelo de usuario durante la validación del asistente de distribución de esta versión.
