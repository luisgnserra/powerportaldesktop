# Análisis de actualización

<!-- language-selector -->
[🇺🇸 English](../REFRESH-ANALYSIS.md) · [🇧🇷 Português](../pt-BR/REFRESH-ANALYSIS.md) · [🇪🇸 Español](REFRESH-ANALYSIS.md) · [🇨🇳 简体中文](../zh-CN/REFRESH-ANALYSIS.md) · [🇫🇷 Français](../fr/REFRESH-ANALYSIS.md) · [🇯🇵 日本語](../ja/REFRESH-ANALYSIS.md) · [🇮🇳 हिन्दी](../hi/REFRESH-ANALYSIS.md) · [🇸🇦 العربية](../ar/REFRESH-ANALYSIS.md)
<!-- /language-selector -->

![Análisis de actualización](../images/es/refresh-analysis.png)

<a name="start-and-safety"></a>
## Inicio y seguridad

Conecta el PBIX correcto, abre Análisis de actualización y pulsa Actualizar y analizar. Confirma el nombre del archivo. El rastreo empieza antes de invocar Inicio > Actualizar nativo; no actualiza tablas secuencialmente mediante TOM. Mantén Power BI abierto y resuelve allí credenciales, errores o cancelación. Una copia BIM no restaura los datos actualizados.

La actualización nativa consulta los orígenes y reemplaza los datos importados. Guarda una copia del PBIX. Resuelve credenciales y errores en Power BI; el rastreo no cancela la actualización ni incluye todas las consultas auxiliares de Power Query.

<a name="interpret-the-measurements"></a>
## Interpretar las medidas

La actividad observada es la unión de intervalos del motor identificados exactamente por tabla, sin duplicar fases anidadas. No es solo el tiempo de consulta del origen ni una ruta crítica demostrada. El total observado va desde el inicio hasta detectar la finalización, incluye la sobrecarga de interfaz/verificación y excluye el recuento posterior de filas. Los eventos sin tabla se indican aparte.

Los tiempos representan actividad observada del motor, no la duración exclusiva de cada consulta M. No sumes tareas paralelas. Las consultas sin carga, pasos M y CPU/memoria por consulta no están disponibles.

La finalización automática requiere observar el fin de los comandos de actualización y una ventana de Power BI lista. Cierra los diálogos de resultado. Finalizar captura manualmente siempre indica análisis incompleto, no demuestra éxito ni cancela la actualización. Los errores del motor/rastreo son explícitos. Una captura interrumpida no se presenta como completada.

<a name="history-and-export"></a>
## Historial y exportación

Las filas se cuentan después de la captura, fuera del cronómetro. DirectQuery/DirectLake no se consultan. La falta de eventos no significa tiempo cero. Se guardan hasta 30 análisis por modelo en este equipo; no se envían al portal.

Selecciona una ejecución guardada y otra para comparar tiempos y filas por nombres de tabla coincidentes. Caché, carga del origen, volumen y paralelismo afectan la comparación; las diferencias no demuestran una causa. JSON conserva valores no disponibles como null; CSV los deja vacíos y protege fórmulas. El historial es local y usa la identidad del diagrama, no se guarda en PBIX. Archivos con identidades expuestas idénticas pueden compartir historial: verifica el modelo. Las exportaciones contienen nombres y recuentos: revísalas antes de compartir.

<!-- refresh-correlation -->
Solo se mide el progreso del motor correlacionado exactamente por RequestID/ActivityID con un comando de actualización activo. Se excluyen consultas visuales ajenas. Algunas versiones de Power BI omiten estos identificadores: el tiempo de una tabla puede no estar disponible aunque se ejecute la actualización.
