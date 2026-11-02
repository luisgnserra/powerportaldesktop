# Solución de problemas y soporte

<!-- language-selector -->
[🇺🇸 English](../TROUBLESHOOTING.md) · [🇧🇷 Português](../pt-BR/TROUBLESHOOTING.md) · [🇪🇸 Español](TROUBLESHOOTING.md) · [🇨🇳 简体中文](../zh-CN/TROUBLESHOOTING.md) · [🇫🇷 Français](../fr/TROUBLESHOOTING.md) · [🇯🇵 日本語](../ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](../hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](../ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

**1.8.6 — Siga la actualización dentro de Power Portal**

Inicie Actualizar y analizar en Power Portal y vea tarjetas en vivo con cada tabla, estado observado, fase del motor, tiempo de actividad y el último texto de progreso nativo disponible de Power BI. Power Portal recupera el foco al iniciar y, si Power BI vuelve al primer plano, al finalizar. No roba repetidamente el foco de otras aplicaciones. Ver en Power BI abre el archivo seleccionado sin iniciar otra actualización; esta elección desactiva el retorno automático del foco durante esa captura.

Power BI sigue siendo el motor. Su ventana puede aparecer brevemente: no es una API compatible de procesamiento de PBIX sin ventana. Credenciales, errores y cancelación permanecen en Power BI; los diálogos nunca se ocultan ni cierran automáticamente. El texto nativo conserva el idioma de Power BI e indica la hora de la última lectura. La ausencia de texto se muestra explícitamente; el seguimiento del motor continúa si falla el lector. Una fase terminada no demuestra que la tabla esté completa, no se inventan porcentajes y las filas finales se cuentan después de la captura. El historial y JSON incluyen los estados nativos: revise las exportaciones antes de compartirlas. La aplicación empaquetada se probó con una actualización real autorizada: 4/4 tablas medidas, 4/4 recuentos, estados en vivo, foco recuperado, Ver en Power BI funcional e historial conservado al recargar. No se guardó automáticamente el PBIX; las imágenes usan datos sintéticos.

**1.8.5 — Corrección de las mediciones de actualización nativa**

Rendimiento de actualización ahora reconoce el comando XML Refresh nativo de Power BI Desktop, incluso dentro de Batch, además de XMLA Process y TMSL refresh. Antes, la actualización podía ejecutarse pero su progreso se descartaba, dejando 0 tablas medidas, recuentos no disponibles y refreshCompletionNotProven. Ahora se acepta el éxito explícito del motor cuando falta el campo opcional Error; los códigos de error no nulos y los errores XMLA siguen prevaleciendo. El progreso exige correlación exacta de solicitud/actividad para excluir consultas visuales ajenas.

Antes del primer comando reconocido, la interfaz indica que espera eventos de actualización de Power BI. Una finalización no confirmada muestra instrucciones traducidas en lugar de solo un código técnico. Actualiza la aplicación, conecta al PBIX correcto y ejecuta Actualizar y analizar otra vez; los informes anteriores incompletos se conservan sin marcarlos como correctos. La aplicación empaquetada se validó de principio a fin en una actualización real autorizada, con actividad por tabla, filas, finalización automática e historial conservado tras recargar. Las capturas usan ejemplos sintéticos, sin datos ni nombres de modelos del usuario.

**1.8.5 — Descargar actualizaciones en el navegador**

Cuando hay una versión nueva, el aviso ofrece Descargar en el navegador junto a Actualizar ahora. Abre en el navegador predeterminado la dirección oficial del instalador detectado en GitHub sin cerrar Power Portal ni iniciar la instalación. Ejecuta el instalador descargado manualmente cuando quieras. La opción sigue disponible tras un error de actualización automática. Los errores al abrir el navegador se muestran explícitamente. Actualizar ahora sigue descargando en la aplicación, verificando SHA-256 y tamaño y solicitando autorización de Windows. Las descargas del navegador no pasan por la verificación automática de la aplicación: compara el SHA-256 publicado antes de ejecutar el instalador. Ambos botones y la explicación están traducidos a los ocho idiomas.

[Volver al inicio](../../README.es.md)

| Problema | Acción recomendada |
|---|---|
| Power Portal no aparece en Herramientas externas | Complete la instalación como administrador, cierre/vuelva a abrir Desktop y compruebe la [ubicación del registro](CONFIGURATION.md#external-tools-registration). Repárelo ejecutando de nuevo el instalador oficial. |
| No hay cinta de Herramientas externas | Compruebe con TI su edición/versión de Power BI Desktop. Este paquete está destinado a ediciones de Desktop compatibles con herramientas externas, no a Service ni Report Server. |
| La herramienta externa ya no se abre | Reinicie Desktop; el ejecutable instalado puede haberse movido o bloqueado. Reinstale para reparar su ruta. No elimine manualmente el `--` inicial de los argumentos del registro. |
| No hay modelo cargado / falla la conexión | Abra un PBIX en Desktop e inicie desde Herramientas externas, o elija **Buscar modelos abiertos**. Vuelva a conectarse tras reiniciar Desktop; los puertos locales antiguos caducan. |
| Nombre de archivo incorrecto / varios modelos | Seleccione explícitamente el modelo abierto deseado y verifique el destino de la confirmación antes de escribir. Los títulos de ventana pueden omitir la ruta completa. |
| Falla la importación de un PBIX sin procesar | Abra el PBIX en Power BI y conéctese localmente. Use BIM/PBIP/TMDL/ZIP para importaciones de archivos de solo lectura compatibles. |
| El cuadro de diálogo del tema sigue apareciendo | Es lo esperado: la importación de temas de Desktop usa automatización visible de la interfaz. No hay una API genérica de temas compatible y sin cuadros de diálogo para esta versión. |
| Falla la automatización del tema | Conserve el JSON generado, compruebe la ventana de destino, evite interactuar durante la importación y use el menú Temas de Power BI para importarlo manualmente. Comunique el error exacto y la versión de Desktop sin subir el PBIX. |
| El tema existente no se cargó con el modelo | Guarde el JSON del tema actual en Desktop e impórtelo en el generador de temas. TOM no puede leer el tema del informe. |
| Existe la medida HTML, pero no aparece un objeto visual | Añada un objeto visual HTML compatible y asígnele la medida manualmente. |
| El calendario aún no tiene filas | Actualice el modelo en Desktop y léalo de nuevo. Compruebe el DAX/intervalo de fechas. |
| Se rechaza la reversión del calendario | La tabla cambió o tiene dependencias. No fuerce su eliminación; use la copia del PBIX guardada o solicite ayuda con la copia de seguridad de metadatos. |
| El idioma no cambia después de reinstalar | La opción guardada por un usuario existente prevalece sobre el valor predeterminado de la instalación. Cambie la bandera de la barra lateral. |
| Configuración de idioma predeterminado no válida | Cierre la aplicación y pida a un administrador que corrija `powerportal-defaults.json` a JSON UTF-8 válido con un código compatible. |
| El script de PowerShell está bloqueado | Revíselo y siga la política de ejecución de su organización. Como alternativa, use el asistente EXE. No desactive los controles corporativos. |
| `-Silent` solicita PowerShell como administrador | Cierre ese terminal e inicie PowerShell con **Ejecutar como administrador**; después, reintente. |
| SHA-256 no coincide | **No ejecute el archivo.** Elimine/mueva la descarga no válida, obtenga de nuevo el recurso oficial y compárelo con la suma de comprobación publicada. |
| Falla la descarga de GitHub | Compruebe la conectividad, las restricciones de proxy/firewall y la URL de la versión. TI puede distribuir el EXE verificado por un canal aprobado. |
| PowerShell indica un error de conexión subyacente/envío TLS | Use la línea TLS 1.2 documentada antes de obtener el asistente en Windows PowerShell y reintente. El actualizador de la aplicación nativa ya usa HTTPS/TLS de forma independiente. |
| SmartScreen/editor desconocido | 1.8.11 no está firmado. Verifique la suma de comprobación y el origen del editor; consulte a TI si su dispositivo bloquea programas sin firma. |
| El editor de relaciones es de solo lectura | Importar un proyecto permite únicamente la organización visual. Conéctese a un modelo local de Power BI en vivo para crear/editar/eliminar relaciones. |
| La relación cambió desde la lectura | Vuelva a leer el modelo de Power BI y revise el vínculo actualizado. Se rechazan las ediciones obsoletas para no sobrescribir otro cambio. |
| Relación duplicada o segunda relación activa | Use pares de columnas distintos o desactive la relación activa actual entre esas tablas antes de activar otra. |
| Error de tipo/unicidad/ambigüedad de relación | Haga coincidir los tipos de datos de las columnas e inspeccione las claves/rutas de filtro en Desktop. TOM/Power BI valida el modelo; no eluda el error. |
| Falló el guardado del diagrama | Compruebe el espacio en disco y los permisos de escritura en el perfil de la aplicación y use Reintentar guardado. Exporte una copia JSON independiente si lo necesita. |
| Diagrama diferente tras renombrar/copiar el PBIX | Los perfiles usan nombres de ventana/archivo y etiquetas de linaje de las tablas; los nombres/identidades pueden cambiar o coincidir entre copias. Importe su disposición exportada en el modelo deseado. |
| No se buscan actualizaciones al iniciar | Las versiones 1.6.1 y anteriores necesitan una actualización manual única a 1.6.2. La ejecución de desarrollo/desde el código fuente no actualiza intencionadamente. |
| Falla la búsqueda de actualizaciones/sin conexión/HTTP 403 o 429 | Las herramientas locales siguen disponibles. Compruebe internet/proxy/firewall y reintente **Buscar actualizaciones**. Pueden aplicarse los límites de solicitudes de la API de GitHub. |
| Actualizar ahora falla al verificar la suma de comprobación o el tamaño | El instalador no se ejecutó. Reintente o descargue manualmente la versión oficial; no ejecute un archivo de caché dañado. |
| Se canceló la autorización de Windows | Power Portal sigue disponible. Reintente **Actualizar ahora** cuando esté listo para aprobar UAC, o solicite permiso de instalación a TI. |
| Una operación activa del modelo bloquea la actualización | Espere a que termine la operación de escritura/tema confirmada y reintente. Guarde/exporte las ediciones no enviadas antes de actualizar. |
| No aparece el aviso de conexión al inicio | La detección necesita un modelo semántico local abierto, no solo la pantalla de bienvenida de Desktop. Use **Buscar modelos abiertos** después de abrir un PBIX. Si la detección falla, compruebe el error visible y vuelva a conectarse. |
| El instalador no puede cerrar la aplicación en ejecución | Guarde su trabajo, cierre Power Portal manualmente y reintente. Solo se dirige al ejecutable instalado exacto. Power BI no se cierra. |
| El botón de correo electrónico no hace nada | Configure un cliente de correo predeterminado, use **Copiar correo electrónico** o escriba manualmente a la dirección siguiente. |
| El informe de TV en línea no puede iniciar sesión/cargar | Verifique la cuenta de Microsoft, los permisos del informe, la licencia, las restricciones de inserción y el acceso a internet. Use imágenes locales para TV sin conexión. |

<a name="contact-support"></a>
## Contactar con soporte

Envíe un correo a **[contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)** o [contacte con Excelência por WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0).

Incluya:

- Versión de Power Portal (1.8.11 para esta publicación).
- Versión de Windows y versión/edición de Power BI Desktop.
- Método de instalación (asistente o PowerShell).
- Pasos para reproducir el problema y el error visible exacto.
- Si había uno o varios modelos abiertos.

**Nunca publique archivos PBIX/BIM, detalles de conexión de los orígenes, credenciales, datos confidenciales ni copias de seguridad/registros de cambios sin depurar en incidencias públicas.** Las capturas también pueden revelar nombres o datos; ocúltelos antes de compartirlas.

Para cuestiones de despliegue o confidenciales, use el correo de soporte en lugar de una incidencia pública.

<a name="native-launch-and-recovery"></a>
## Inicio nativo y recuperación

Rendimiento de actualización aparece inmediatamente debajo de Mapa de relaciones en el menú lateral y la galería. La búsqueda del botón nativo ignora las pestañas Home duplicadas de las vistas de consultas DAX y TMDL, evitando “Ambiguous Power BI control: home”. Si el control no está disponible, selecciona Informe, Datos o Modelo en Power BI.

Actualizar permanece deshabilitado durante la confirmación, validación e inicio del seguimiento; Finalizar captura se oculta hasta que la captura esté lista. Esto evita un segundo inicio con el error incorrecto “Finish the active Power BI operation before refreshing”. Un fallo demostrado antes de la invocación nativa detiene el seguimiento, comprueba la limpieza y permite reintentar. Si la invocación ya pudo ocurrir, el error permanece visible y la captura sigue pendiente: revisa Power BI, termina la actualización y cierra los diálogos antes de Finalizar captura. Las solicitudes repetidas reanudan la captura existente sin iniciar otra actualización. Las operaciones realmente activas deben terminar primero.
