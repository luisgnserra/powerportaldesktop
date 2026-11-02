# Uso y seguridad del modelo

<!-- language-selector -->
[🇺🇸 English](../USAGE.md) · [🇧🇷 Português](../pt-BR/USAGE.md) · [🇪🇸 Español](USAGE.md) · [🇨🇳 简体中文](../zh-CN/USAGE.md) · [🇫🇷 Français](../fr/USAGE.md) · [🇯🇵 日本語](../ja/USAGE.md) · [🇮🇳 हिन्दी](../hi/USAGE.md) · [🇸🇦 العربية](../ar/USAGE.md)
<!-- /language-selector -->

[Volver al inicio](../../README.es.md)

<a name="first-run"></a>
## Primer inicio

Inicie desde la cinta Herramientas externas de Power BI para conectarse automáticamente al modelo local, o abra el acceso directo de Windows para usar herramientas sin conexión/importar un proyecto. La página de inicio muestra las once herramientas. **Inicio** vuelve a la galería sin descartar el modelo cargado.

Use el botón para contraer la barra lateral y las banderas según necesite. El encabezado de conexión muestra el nombre del archivo cuando está disponible, en lugar del GUID interno de la base de datos.

Después de conectarse, un estado verde compacto en el encabezado sustituye al aviso de conexión más grande. Su información sobre herramientas recuerda que debe guardar una copia independiente del PBIX. Los cambios compatibles siguen requiriendo confirmación.

[Recorrido ilustrado de todas las pantallas e interacciones con Power BI](SCREENSHOTS.md).

<a name="read-only-work"></a>
## Trabajo de solo lectura

Lea metadatos del modelo, consulte pequeñas muestras de datos, audite medidas, compruebe el contraste, formatee DAX o exporte documentación sin enviar escrituras. Los datos del modelo representan el modelo semántico **sin los filtros o segmentaciones del informe de la página activa**.

Las muestras están limitadas a 50 filas, con hasta 8 visibles en la interfaz, y las consultas tienen un tiempo de espera de 20 segundos. El panel de datos solo aparece donde resulta útil, como en calendarios y componentes.

Las importaciones de proyectos locales admiten BIM, carpetas TMDL/PBIP/PBIR compatibles y ZIP. Son de solo lectura. El importador no puede analizar un PBIX sin procesar: ábralo en Power BI Desktop y conéctese localmente.

Los límites ZIP son 50 MB comprimidos, 500 MB extraídos, 10.000 archivos y 64 MB por entrada. No se recorren enlaces simbólicos ni carpetas como `.git`, `.pbi` y `node_modules`. Importe un modelo semántico a la vez.

<a name="themes"></a>
## Temas

1. En Power BI Desktop, guarde el JSON del tema actual desde el menú Temas si desea editarlo.
2. En el generador de temas de Power Portal, use el área destacada **Cargar tema del informe (JSON)**. Una conexión TOM al modelo no puede recuperar el tema del informe.
3. Edite colores/fuentes/fondos mientras observa la vista previa local en vivo.
4. Exporte JSON o desplácese hasta el final de la página, debajo de los ajustes y la vista previa, y elija **Enviar tema directamente a Power BI**.
5. Verifique el nombre del archivo en la confirmación, apruebe y no interactúe con Power BI durante la importación.
6. Guarde el PBIX en Power BI cuando esté satisfecho.

El envío directo usa **automatización visible de la interfaz**, incluido el cuadro de diálogo de archivos de Desktop. La aplicación verifica el tema resultante exportándolo y comparando las propiedades enviadas. El JSON generado sigue disponible si falla la automatización. Las distintas versiones de Desktop, la localización o los cambios de interfaz pueden impedir la automatización.

No existe una API genérica compatible de Desktop para aplicar un tema a cualquier PBIX abierto sin cuadros de diálogo. `applyTheme` para informes incrustados es una API distinta y no se usa como alternativa para Desktop.

La vista previa en vivo es una implementación local de la pantalla de temas del sitio, no una representación idéntica píxel a píxel de todos los objetos visuales de Power BI.

![Importación de temas destacada y vista previa en vivo](../images/es/theme-generator.png)

![Enviar tema directamente a Power BI al final de la página](../images/es/theme-send.png)

<a name="write-operations"></a>
## Operaciones de escritura

Las escrituras compatibles en el modelo semántico son crear una medida, actualizar el DAX de la medida seleccionada, crear una tabla de calendario calculada nueva y crear/editar/eliminar relaciones.

Antes de cualquier escritura:

1. **Guarde una copia independiente del PBIX.**
2. Verifique el archivo/modelo seleccionado y el DAX propuesto.
3. Acepte la confirmación nativa (Cancelar es la opción predeterminada).
4. Conserve la ruta de la copia de seguridad mostrada y compruebe el resultado en Power BI.
5. Guarde el PBIX usted mismo; la aplicación no lo guarda automáticamente.

La copia de seguridad de metadatos BIM debe completarse antes de confirmar la escritura. Se rechazan nombres duplicados. Las actualizaciones comprueban la expresión anterior para no sobrescribir cambios simultáneos. Un fallo después de confirmar la escritura se comunica como un cambio ya escrito, no como una cancelación.

<a name="calendar-tables"></a>
### Tablas de calendario

Lea la expresión calculada, el intervalo de fechas y la muestra de un calendario existente. Exporte el contenido existente o genere un nuevo script DAX/M/SQL. El envío directo crea una tabla calculada **nueva**; no sobrescribe un calendario existente.

Después de crearla, actualice en Power BI Desktop; Power Portal no procesa el modelo de Desktop. La acción **Revertir calendario creado** de la sesión está protegida y se niega a eliminar una tabla si su estructura/expresión cambió o adquirió medidas, relaciones o dependencias DAX.

![Acciones de lectura, exportación y creación de calendario conectadas al modelo de demostración](../images/es/calendar-generator.png)

La copia BIM protege los metadatos del modelo, **no las páginas del informe, los objetos visuales, todas las filas de datos ni el PBIX completo**. No se ofrece restauración automática del modelo completo.

<a name="html-components"></a>
### Componentes HTML

Enviar un componente crea una medida HTML. Añada manualmente un objeto visual HTML compatible al informe y asígnele la medida. TOM no puede colocar automáticamente objetos visuales en un lienzo de informe.

![Destino de la medida HTML y botón de creación directa](../images/es/components.png)

<a name="update-measure-dax"></a>
### Actualizar el DAX de una medida

Seleccione una medida del modelo en el formateador DAX, formatee su expresión y use **Actualizar medida en Power BI**. Esta acción actualiza esa medida seleccionada con confirmación y comprueba que su expresión anterior no haya cambiado simultáneamente. No es una simple exportación de texto local.

![Selección de medida del modelo, DAX formateado y Actualizar medida en Power BI](../images/es/dax-formatter.png)

<a name="tv-tool"></a>
## TV Tool

El área destacada **TV Tool en acción**, en la parte superior, abre un [ejemplo oficial funcional de panel](https://www.powerportal.com.br/tv_tool/painel_exemplo_power_bi_tv_tool.html) en su navegador predeterminado. Requiere internet y no envía el modelo local. El ejemplo ilustrativo del formulario sigue cargando diapositivas de muestra locales.

Use enlaces de informes publicados o imágenes locales, ajuste duraciones/transiciones y exporte HTML. Los enlaces del servicio conservan los identificadores de página compatibles. La herramienta **no** rota las páginas del PBIX abierto localmente.

Los informes privados requieren la licencia de Power BI, autenticación de Microsoft, permisos y política de inserción adecuados. Recargar un informe no actualiza los datos del modelo semántico. Las diapositivas de imágenes locales son la opción de presentación sin conexión.

<a name="relationship-map"></a>
## Mapa de relaciones

Abra la nueva herramienta para comprender los vínculos entre tablas del modelo en un lienzo arrastrable, con cardinalidades, flechas de filtro, líneas inactivas discontinuas, grupos personalizados, colores y nombres/iconos descriptivos.

![Mapa de relaciones con grupos de hechos y dimensiones](../images/es/relationship-map.png)

La organización visual se guarda automáticamente por modelo y puede exportarse/importarse como JSON. No cambia los nombres de los objetos del modelo, no modifica la disposición nativa de Power BI ni envía ediciones de relaciones.

Con una conexión en vivo, **Aplicar relación a Power BI** y **Eliminar relación en Power BI** envían cada edición tras una confirmación nativa y una copia de seguridad de metadatos. Se pueden cambiar los extremos, las cardinalidades, la dirección del filtro y el estado activo; los ajustes existentes de seguridad/integridad se conservan. Se rechazan explícitamente los metadatos obsoletos, vínculos duplicados, tipos de columna inconsistentes y errores de validación del motor.

**Las relaciones afectan los resultados y filtros del informe. Guarde primero una copia del PBIX y, después, guarde el PBIX en Desktop.** No existe reversión automática del modelo completo. [Tutorial completo de relaciones, persistencia y límites](RELATIONSHIPS.md).

<a name="diagnostics-and-privacy"></a>
## Diagnóstico y privacidad

Las puntuaciones de auditoría/análisis son heurísticas. Una conexión activa al modelo no proporciona páginas del informe ni la ubicación de los objetos visuales; las dimensiones no disponibles no se inventan. Los metadatos de proyectos PBIR pueden proporcionar recuentos de páginas/objetos visuales cuando existen.

La aplicación no envía al portal archivos del modelo, metadatos, filas ni credenciales del origen. Sin embargo, las exportaciones, copias de seguridad y registros locales pueden contener información confidencial. Comparta con soporte únicamente información de errores depurada de datos sensibles.

[Configuración](CONFIGURATION.md) · [Solución de problemas](TROUBLESHOOTING.md)

En 1.7.1, dibujar relaciones solo prepara un borrador: haga clic o arrastre entre pares de columnas exactos y revíselo antes de aplicarlo. La eliminación con el botón derecho usa la misma confirmación y copia de seguridad. La detección automática nativa es independiente y puede crear varios vínculos: revíselos en Power BI, cierre sus diálogos y después finalice en Power Portal antes de otras escrituras o actualizaciones. Las imágenes locales de grupo y las preferencias de visibilidad se guardan solo en el diagrama. [Nuevo flujo de relaciones](RELATIONSHIPS.md#native-automatic-relationship-detection).
