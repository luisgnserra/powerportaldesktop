# Configuración

<!-- language-selector -->
[🇺🇸 English](../CONFIGURATION.md) · [🇧🇷 Português](../pt-BR/CONFIGURATION.md) · [🇪🇸 Español](CONFIGURATION.md) · [🇨🇳 简体中文](../zh-CN/CONFIGURATION.md) · [🇫🇷 Français](../fr/CONFIGURATION.md) · [🇯🇵 日本語](../ja/CONFIGURATION.md) · [🇮🇳 हिन्दी](../hi/CONFIGURATION.md) · [🇸🇦 العربية](../ar/CONFIGURATION.md)
<!-- /language-selector -->

[Volver al inicio](../../README.es.md)

<a name="language-and-sidebar-preferences"></a>
## Preferencias de idioma y barra lateral

Use las banderas de la barra lateral para cambiar de idioma. La preferencia se conserva en el perfil local de la aplicación de su usuario de Windows. También se guarda el estado contraído/expandido de la barra lateral.

Los once botones de herramientas siguen visibles sin desplazamiento de la barra lateral a los tamaños de ventana compatibles. Las etiquetas traducidas largas ocupan hasta dos líneas visibles y mantienen su nombre accesible/información sobre herramientas completos. **Consultoría y formación** aparece debajo de **Acerca del desarrollo**. [Capturas de la barra expandida y contraída](SCREENSHOTS.md#home-and-navigation).

Prioridad de idioma:

1. Su selección guardada en la aplicación.
2. El archivo `powerportal-defaults.json` de la instalación.
3. La configuración regional del sistema Windows/Electron; se usa inglés para los idiomas no compatibles.

| Código | Idioma |
|---|---|
| `pt` | Portugués (Brasil) |
| `en` | Inglés |
| `es` | Español |
| `zh` | Mandarín / chino simplificado |
| `fr` | Francés |
| `ja` | Japonés |
| `hi` | Hindi |
| `ar` | Árabe, de derecha a izquierda |

El instalador escribe este archivo en la carpeta de instalación de la aplicación elegida:

```json
{"language":"en"}
```

Un administrador puede editarlo después de cerrar Power Portal para cambiar el valor predeterminado para **nuevos perfiles de usuario**. Guarde JSON UTF-8 válido con exactamente un código de idioma compatible. No edite binarios de la aplicación ni recursos empaquetados. Una configuración no válida se comunica explícitamente.

Cambiar el idioma predeterminado de la instalación o reinstalar no sustituye la selección de bandera guardada por un usuario existente. Los nombres del modelo, datos, código y expresiones DAX nunca se traducen.

<a name="connect-to-an-open-power-bi-file"></a>
## Conectarse a un archivo abierto de Power BI

Recomendado: abra el PBIX en Power BI Desktop e inicie **Herramientas externas > Power Portal**. Desktop pasa automáticamente el punto de conexión del modelo local y el identificador de la base de datos.

Si se inicia desde un acceso directo de Windows:

1. Abra el PBIX en Power BI Desktop.
2. Aparece un aviso de inicio cuando se detectan modelos locales abiertos. Use **Buscar modelos abiertos** y seleccione el nombre del archivo.
3. Use **Leer modelo de Power BI** para volver a cargar los metadatos después de los cambios.

La detección solo enumera la disponibilidad; no selecciona automáticamente un archivo ni escribe en él. Una vez conectado, un estado verde compacto en el encabezado indica ajustes confirmados; use **Actualizar modelo de Power BI** para recargar los metadatos. [Capturas de conexión](SCREENSHOTS.md#connect-to-a-file-already-open-in-power-bi).

Con un único modelo abierto, la lectura puede descubrirlo automáticamente. Si hay varios modelos abiertos, seleccione explícitamente el archivo deseado. Los nombres similares se distinguen mediante un número; los títulos de ventana de Power BI no siempre muestran las rutas completas.

Las conexiones son únicamente locales. No configure un servidor público, no comparta un puerto de modelo ni trate esto como un servidor DAX remoto. Si Power BI se reinicia, conéctese de nuevo a la nueva instancia local.

<a name="external-tools-registration"></a>
## Registro de Herramientas externas

El instalador escribe:

```text
%CommonProgramFiles(x86)%\Microsoft Shared\Power BI Desktop\External Tools\PowerPortal.pbitool.json
```

El registro contiene la ruta del ejecutable instalado y estos marcadores de Desktop:

```text
-- --powerportal-server "%server%" --powerportal-database "%database%"
```

El `--` inicial es intencionado. No lo elimine ni sustituya manualmente un puerto obsoleto. Reinicie Power BI Desktop después de instalar o reparar el registro.

<a name="data-locations"></a>
## Ubicaciones de datos

El perfil normal de la aplicación es:

```text
%APPDATA%\powerportal-desktop
```

Las subcarpetas relevantes incluyen:

- `themes`: JSON generados y exportaciones `.applied.json` de verificación.
- `model-changes`: registros locales de los intentos de escritura confirmados y sus resultados.
- `relationship-diagrams`: disposiciones visuales por modelo, incluidos nombres de tablas/grupos, iconos, colores, posiciones y área de visualización. Exporte/importe la disposición desde [Mapa de relaciones](RELATIONSHIPS.md#save-and-share-the-organization); nunca envía escrituras al modelo.
- `updates`: instaladores de actualización descargados y verificados. Las descargas parciales se eliminan ante fallos gestionados. Los instaladores verificados pueden conservarse después de la instalación; no los confunda con copias de seguridad del modelo.
- El perfil también almacena las preferencias de interfaz por usuario.

Las copias de seguridad de metadatos se almacenan localmente y se muestra la ruta exacta después de una escritura correcta. La documentación exportada y los archivos descargados/generados usan el destino elegido por el usuario.

Trate las copias de seguridad, registros y exportaciones como confidenciales: una copia BIM completa puede contener detalles de origen/conexión y los registros de cambios pueden contener DAX antiguo/nuevo. No se borran automáticamente al desinstalar. No los suba a incidencias públicas.

Para restablecer las preferencias de interfaz, seleccione otro idioma o expanda la barra lateral en la aplicación. Un restablecimiento completo del perfil también puede eliminar registros y copias de seguridad conservados; no elimine el perfil salvo que haya cerrado la aplicación y guardado deliberadamente todo lo necesario.

<a name="network-and-accounts"></a>
## Red y cuentas

- Las vistas previas locales y las herramientas incluidas no requieren una cuenta de Power Portal.
- La aplicación instalada consulta los metadatos públicos de versiones de GitHub al inicio. El actualizador de su proceso principal descarga recursos oficiales por HTTPS después de **Actualizar ahora**. Las solicitudes de actualización no incluyen nombres del modelo, expresiones, filas ni credenciales.
- Las ventanas locales con acceso al modelo bloquean las solicitudes web remotas arbitrarias.
- Los enlaces de consultoría y los vídeos abren el navegador predeterminado cuando se solicita.
- TV Tool usa una ventana aislada de presentación en línea para páginas publicadas de Power BI/Microsoft. No comparte acceso al modelo local; su inicio de sesión de Microsoft es independiente y no persiste entre sesiones.
- Las consultas DirectQuery pueden acceder a los orígenes originales a través de Power BI y pueden necesitar acceso a la red y las credenciales existentes del origen.
- El correo electrónico requiere un cliente de correo configurado. Use **Copiar correo electrónico** si no hay ninguno disponible.

No hay claves de API, contraseñas, credenciales del portal ni archivos de configuración de código fuente que deba proporcionar para instalar.

[Instalación](INSTALLATION.md) · [Uso y seguridad](USAGE.md) · [Comportamiento de las actualizaciones](UPDATES.md)

## Bienvenida y preferencia de inicio guardada

La página inicial explica cómo abrir un archivo en Power BI Desktop, buscar su modelo abierto y enviar cambios compatibles con confirmación. Mostrar bienvenida cada vez que abra la aplicación viene activado; desactívalo para ocultarla en futuros inicios. Continuar a las herramientas solo cierra la presentación actual. Bienvenida en Inicio permite reabrirla y reactivar el interruptor. La opción se guarda en el perfil local, separado de la edición Store. Admite ocho idiomas y teclado. Abrir esta pantalla no modifica modelos. Guarda una copia antes y guarda el PBIX en Power BI después. Las pruebas verificaron reinicios reales, persistencia, búsqueda de modelos y diseño traducido. Las operaciones fueron simuladas; no se modificaron datos reales.
