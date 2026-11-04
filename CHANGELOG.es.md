# Notas de versión

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

<a name="1811"></a>
## 1.8.13 - 2026-11-04

- Ventana emergente de bienvenida e instalador ilustrado: La bienvenida ahora aparece en una ventana modal centrada, no dentro del contenido de Inicio. El fondo queda bloqueado y el foco del teclado permanece en la ventana. Escape o Continuar a las herramientas solo cierra la presentación actual. Se conservan el interruptor de inicio guardado y el botón Bienvenida. Al finalizar, el instalador explica Herramientas externas > Power Portal en Power BI Desktop y muestra la imagen de referencia proporcionada. Si Power BI estaba abierto, ciérrelo y vuelva a abrirlo. Admite ocho idiomas; la imagen muestra la cinta en portugués. Se mantiene la opción de iniciar Power Portal al finalizar; no hace clic automáticamente en Power BI. La bienvenida no modifica modelos.

## 1.8.12

**Bienvenida y preferencia de inicio guardada**

La página inicial explica cómo abrir un archivo en Power BI Desktop, buscar su modelo abierto y enviar cambios compatibles con confirmación. Mostrar bienvenida cada vez que abra la aplicación viene activado; desactívalo para ocultarla en futuros inicios. Continuar a las herramientas solo cierra la presentación actual. Bienvenida en Inicio permite reabrirla y reactivar el interruptor. La opción se guarda en el perfil local, separado de la edición Store. Admite ocho idiomas y teclado. Abrir esta pantalla no modifica modelos. Guarda una copia antes y guarda el PBIX en Power BI después. Las pruebas verificaron reinicios reales, persistencia, búsqueda de modelos y diseño traducido. Las operaciones fueron simuladas; no se modificaron datos reales.

## 1.8.11

**Envía ideas de mejora sin saturar el menú**

Enviar ideas aparece justo encima de Acerca del desarrollo. El formulario accesible acepta un título (hasta 120 caracteres) y una descripción (hasta 1000). Abrir correo con la idea solicita abrir el cliente predeterminado con destinatario fijo contato@consultoriaexcelencia.com.br, asunto y mensaje preparados. Revisa y envía desde allí: Power Portal no envía automáticamente ni confirma la entrega. Si no abre, configura un cliente predeterminado o envía manualmente. No adjunta datos del modelo, archivos ni credenciales y no guarda borradores en disco. No incluyas información confidencial. Los errores son explícitos y conservan el texto para reintentar o copiar. El formulario funciona sin conexión hasta abrir el correo; la entrega depende de tu cuenta y red.

Los botones y espacios del menú son más compactos en ventanas bajas, sin ocultar controles ni añadir desplazamiento. Las pruebas del paquete verifican menú expandido/contraído a 680/768/900 píxeles en ocho idiomas, botones de al menos 24 píxeles, teclado, campos obligatorios, destinatario fijo/texto codificado, errores del cliente y contenido conservado. Las pruebas interceptaron la apertura: no se envió ningún correo. Las capturas usan datos sintéticos.

<a name="1810"></a>
## 1.8.10

**Ilustraciones de primer plano animadas y hover más rico**

Las doce portadas de inicio ahora animan la ilustración principal de cada herramienta, no solo el fondo: flotación y rotación suaves con un indicador de verificación pulsante. Al pasar el ratón o enfocar con el teclado aparecen paneles de barras, un indicador hexagonal, una órbita discontinua y partículas animadas. Las animaciones adicionales se pausan fuera del hover/foco. Las capas decorativas no interceptan clics ni entran en el árbol de accesibilidad. La preferencia de movimiento reducido detiene las animaciones conservando detalles estáticos, contraste y foco. Se mantienen las ilustraciones locales originales sin texto, los ocho idiomas y la navegación. Las pruebas del paquete midieron cambios reales en las transformaciones del primer plano y los paneles, foco por teclado, movimiento reducido, doce portadas distintas y diseño en ocho idiomas. Las capturas son imágenes estáticas de los estados normal/hover, no vídeos; los datos son sintéticos.

<a name="189"></a>
## 1.8.9

**Muestra del calendario y acceso a la actualización nativa**

En Generador de tabla calendario, la muestra real (hasta 50 filas) aparece debajo de Generar script. Actualizar en Power BI está al lado y, con conexión activa, abre Rendimiento de actualización e inicia el mismo flujo nativo de actualización de datos con confirmación. Allí se muestran estados, tiempos y recuentos de filas. Actualiza todo el modelo: no aplica el script generado, no crea ni sustituye una tabla calendario y no guarda el PBIX. Crear calendario en Power BI sigue siendo una acción separada. El botón se deshabilita sin conexión, admite teclado y está traducido a los ocho idiomas. Cancelación y errores usan el flujo existente. La muestra conserva la última lectura: usa Leer calendario seleccionado para consultarla de nuevo tras actualizar. Las pruebas de la aplicación empaquetada verificaron posición, ocho traducciones, bloqueo sin conexión, conexión exacta, cancelación, errores visibles, reintento y creación de calendario intacta. No se inició ninguna actualización real; las capturas usan datos sintéticos.

<a name="188"></a>
## 1.8.8

**Líneas dinámicas y envío de temas verificado**

En Mapa de relaciones, Estilo de líneas alterna entre Curvas y Líneas rectas con ángulos de 90 grados. Los extremos usan dinámicamente los bordes superior/inferior o izquierdo/derecho enfrentados, considerando el tamaño real de las tarjetas. Las conexiones laterales conservan la altura de la columna relacionada. Las flechas negras con borde blanco siguen los tramos rectos sin inclinarse en las esquinas. El estilo se guarda automáticamente y viaja con el JSON exportado; los diseños anteriores conservan las curvas. No cambia el diseño nativo de Power BI ni calcula rutas globales para evitar obstáculos.

Enviar tema directamente a Power BI devuelve el foco a Power Portal tras la importación nativa y durante la verificación por exportación, solo si Power BI está en primer plano. Una vez verificado el tema, muestra Power BI; los errores también muestran la ventana seleccionada. Los diálogos nativos pueden aparecer brevemente y no se ocultan: Desktop no tiene una API de temas compatible sin diálogos. Se gestionan los cambios asíncronos de pestaña antes de confirmar el tema. Una prueba real autorizada de la aplicación empaquetada verificó importación/exportación, retorno al Portal y activación final de Power BI; después restauró el tema Predeterminado original sin guardar el PBIX. Todas las capturas usan datos sintéticos.

<a name="187"></a>
## 1.8.7

**Selección de colores clara y fiable**

Los once colores del tema tienen ahora una muestra nativa visible y un botón Seleccionar color junto al campo HEX editable. Pulse la muestra o el botón, o use Intro/Espacio con el botón enfocado. El selector ya no depende de un campo invisible sin tamaño ni de un doble clic en HEX. Se conservan la edición manual, importación, vista previa en vivo y exportación JSON. Los errores se muestran explícitamente. Se verificó varias veces la apertura nativa en Windows, además de los once botones por ratón/teclado y los textos en ocho idiomas.

Análisis de actualización se llama ahora Rendimiento de actualización en el menú, inicio, título y ocho idiomas. Solo cambia el nombre: actualización nativa, progreso, tiempos, filas, historial local y compatibilidad JSON/CSV no cambian. Los análisis guardados siguen disponibles sin migración ni nueva actualización de datos. Las imágenes usan datos sintéticos.

<a name="186"></a>
## 1.8.6

**Siga la actualización dentro de Power Portal**

Inicie Actualizar y analizar en Power Portal y vea tarjetas en vivo con cada tabla, estado observado, fase del motor, tiempo de actividad y el último texto de progreso nativo disponible de Power BI. Power Portal recupera el foco al iniciar y, si Power BI vuelve al primer plano, al finalizar. No roba repetidamente el foco de otras aplicaciones. Ver en Power BI abre el archivo seleccionado sin iniciar otra actualización; esta elección desactiva el retorno automático del foco durante esa captura.

Power BI sigue siendo el motor. Su ventana puede aparecer brevemente: no es una API compatible de procesamiento de PBIX sin ventana. Credenciales, errores y cancelación permanecen en Power BI; los diálogos nunca se ocultan ni cierran automáticamente. El texto nativo conserva el idioma de Power BI e indica la hora de la última lectura. La ausencia de texto se muestra explícitamente; el seguimiento del motor continúa si falla el lector. Una fase terminada no demuestra que la tabla esté completa, no se inventan porcentajes y las filas finales se cuentan después de la captura. El historial y JSON incluyen los estados nativos: revise las exportaciones antes de compartirlas. La aplicación empaquetada se probó con una actualización real autorizada: 4/4 tablas medidas, 4/4 recuentos, estados en vivo, foco recuperado, Ver en Power BI funcional e historial conservado al recargar. No se guardó automáticamente el PBIX; las imágenes usan datos sintéticos.

<a name="185"></a>
## 1.8.5

**Corrección de las mediciones de actualización nativa**

Análisis de actualización ahora reconoce el comando XML Refresh nativo de Power BI Desktop, incluso dentro de Batch, además de XMLA Process y TMSL refresh. Antes, la actualización podía ejecutarse pero su progreso se descartaba, dejando 0 tablas medidas, recuentos no disponibles y refreshCompletionNotProven. Ahora se acepta el éxito explícito del motor cuando falta el campo opcional Error; los códigos de error no nulos y los errores XMLA siguen prevaleciendo. El progreso exige correlación exacta de solicitud/actividad para excluir consultas visuales ajenas.

Antes del primer comando reconocido, la interfaz indica que espera eventos de actualización de Power BI. Una finalización no confirmada muestra instrucciones traducidas en lugar de solo un código técnico. Actualiza la aplicación, conecta al PBIX correcto y ejecuta Actualizar y analizar otra vez; los informes anteriores incompletos se conservan sin marcarlos como correctos. La aplicación empaquetada se validó de principio a fin en una actualización real autorizada, con actividad por tabla, filas, finalización automática e historial conservado tras recargar. Las capturas usan ejemplos sintéticos, sin datos ni nombres de modelos del usuario.

<a name="184"></a>
## 1.8.4

**Descargar actualizaciones en el navegador**

Cuando hay una versión nueva, el aviso ofrece Descargar en el navegador junto a Actualizar ahora. Abre en el navegador predeterminado la dirección oficial del instalador detectado en GitHub sin cerrar Power Portal ni iniciar la instalación. Ejecuta el instalador descargado manualmente cuando quieras. La opción sigue disponible tras un error de actualización automática. Los errores al abrir el navegador se muestran explícitamente. Actualizar ahora sigue descargando en la aplicación, verificando SHA-256 y tamaño y solicitando autorización de Windows. Las descargas del navegador no pasan por la verificación automática de la aplicación: compara el SHA-256 publicado antes de ejecutar el instalador. Ambos botones y la explicación están traducidos a los ocho idiomas.

<a name="183"></a>
## 1.8.3

**Vista previa del tema con líneas suaves**

El gráfico de líneas del generador de temas ahora usa curvas cúbicas suaves en lugar de segmentos rectos, tanto con datos de ejemplo como del modelo conectado. Las curvas pasan por los puntos originales sin crear picos entre los valores; se conservan colores, marcadores e información emergente. El cambio afecta solo a la vista previa: no modifica el JSON exportado ni el formato de líneas de los objetos visuales existentes en Power BI.

<a name="182"></a>
## 1.8.2

**Correcciones al iniciar la actualización**

Análisis de actualización aparece inmediatamente debajo de Mapa de relaciones en el menú lateral y la galería. La búsqueda del botón nativo ignora las pestañas Home duplicadas de las vistas de consultas DAX y TMDL, evitando “Ambiguous Power BI control: home”. Si el control no está disponible, selecciona Informe, Datos o Modelo en Power BI.

Actualizar permanece deshabilitado durante la confirmación, validación e inicio del seguimiento; Finalizar captura se oculta hasta que la captura esté lista. Esto evita un segundo inicio con el error incorrecto “Finish the active Power BI operation before refreshing”. Un fallo demostrado antes de la invocación nativa detiene el seguimiento, comprueba la limpieza y permite reintentar. Si la invocación ya pudo ocurrir, el error permanece visible y la captura sigue pendiente: revisa Power BI, termina la actualización y cierra los diálogos antes de Finalizar captura. Las solicitudes repetidas reanudan la captura existente sin iniciar otra actualización. Las operaciones realmente activas deben terminar primero.

<a name="181"></a>
## 1.8.1

**Tarjetas animadas en el inicio**

Las doce tarjetas iniciales usan el mismo azul marino del menú (#041e43), con escenas vectoriales originales sin texto. Cada herramienta conserva su ilustración central, enriquecida con paneles, gráficos, base de datos, órbitas, cuadrícula y satélites flotantes. Las líneas de señal se mueven suavemente. Las portadas no cargan imágenes, scripts ni servicios externos.

Pasa el ratón o enfoca con el teclado para mostrar marco y brillo dorados, reflejo de luz, escena resaltada, flecha circular y acción dorada. Pulsar ofrece respuesta inmediata sin retrasar la navegación. Intro/Espacio siguen abriendo la misma herramienta. La preferencia de movimiento reducido detiene las animaciones conservando el realce estático y el foco visible. Los títulos y acciones quedan fuera de la imagen y siguen el idioma elegido. Las capturas muestran estados estáticos normal/hover, no vídeos.

<a name="180"></a>
## 1.8.0

**Análisis de actualización** — Mide la actualización nativa. Compara tiempos y filas.

Conecta el PBIX correcto, abre Análisis de actualización y pulsa Actualizar y analizar. Confirma el nombre del archivo. El rastreo empieza antes de invocar Inicio > Actualizar nativo; no actualiza tablas secuencialmente mediante TOM. Mantén Power BI abierto y resuelve allí credenciales, errores o cancelación. Una copia BIM no restaura los datos actualizados.

La actividad observada es la unión de intervalos del motor identificados exactamente por tabla, sin duplicar fases anidadas. No es solo el tiempo de consulta del origen ni una ruta crítica demostrada. El total observado va desde el inicio hasta detectar la finalización, incluye la sobrecarga de interfaz/verificación y excluye el recuento posterior de filas. Los eventos sin tabla se indican aparte.

La finalización automática requiere observar el fin de los comandos de actualización y una ventana de Power BI lista. Cierra los diálogos de resultado. Finalizar captura manualmente siempre indica análisis incompleto, no demuestra éxito ni cancela la actualización. Los errores del motor/rastreo son explícitos. Una captura interrumpida no se presenta como completada.

Las filas se cuentan después de la captura, fuera del cronómetro. DirectQuery/DirectLake no se consultan. La falta de eventos no significa tiempo cero. Se guardan hasta 30 análisis por modelo en este equipo; no se envían al portal.

<a name="175"></a>
## 1.7.5

- El Mapa de relaciones aparece ahora inmediatamente después de TV Tool en el menú lateral y la galería inicial.
- Se eliminó el bloque genérico Datos reales del modelo del Generador de calendario y la Biblioteca de componentes. Se mantienen sus controles propios de lectura y envío; el período real utiliza el calendario seleccionado dentro de la herramienta.
- Las portadas de inicio se redibujaron como ilustraciones vectoriales locales sin texto incrustado. Los títulos, descripciones y acciones permanecen fuera de las imágenes y siguen el idioma elegido.
- Arrastra una columna de origen a otra tabla para abrir el diálogo de relación real y elegir la columna de destino. Soltar sobre una columna la preselecciona. Revisa cardinalidad, filtro y estado activo; luego valida y aplica con confirmación nativa y copia BIM.

<a name="assets"></a>
### Recursos

- `PowerPortal-Setup-1.7.5-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="174"></a>
## 1.7.4

- El encabezado animado de Power Portal ahora contiene el nombre del archivo, el estado de conexión y los cinco botones de lectura, importación, búsqueda y actualización. Se eliminó la barra separada debajo para liberar espacio. El contenido se adapta dentro del encabezado en ventanas pequeñas y en los ocho idiomas, incluido árabe. Se mantienen las confirmaciones, los avisos y las actualizaciones.

<a name="assets-1"></a>
### Recursos

- `PowerPortal-Setup-1.7.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

<a name="173"></a>
## 1.7.3

- Las flechas de relaciones ahora se sitúan sobre la curva y giran según su dirección local, incluso en enlaces diagonales o invertidos.
- Flechas SVG más grandes, de 36 × 26 unidades, siempre negras con un contorno blanco de 3 unidades, independientemente del color de la línea.
- El filtro unidireccional sigue del destino al origen; el bidireccional muestra dos flechas opuestas. El filtro automático conserva el signo de interrogación. Este cambio es solo visual.

<a name="assets-2"></a>
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

<a name="assets-3"></a>
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

<a name="assets-4"></a>
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

<a name="assets-5"></a>
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

<a name="assets-6"></a>
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

<a name="assets-7"></a>
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

<a name="assets-8"></a>
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

<a name="assets-9"></a>
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
