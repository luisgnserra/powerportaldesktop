# Usage and model safety

<!-- language-selector -->
[🇺🇸 English](USAGE.md) · [🇧🇷 Português](pt-BR/USAGE.md) · [🇪🇸 Español](es/USAGE.md) · [🇨🇳 简体中文](zh-CN/USAGE.md) · [🇫🇷 Français](fr/USAGE.md) · [🇯🇵 日本語](ja/USAGE.md) · [🇮🇳 हिन्दी](hi/USAGE.md) · [🇸🇦 العربية](ar/USAGE.md)
<!-- /language-selector -->

[Back to home](../README.md)

## First run

Start from Power BI's External Tools ribbon for an automatic local model connection, or open the Windows shortcut to use offline tools/import a project. The home page displays all eleven tools. **Home** returns to the gallery without discarding the loaded model.

Use the sidebar collapse button and flags as needed. The connection header shows the file name when available, rather than the internal database GUID.

After connecting, a compact green status in the header replaces the larger connected banner. Its tooltip reminds you to save a separate PBIX copy. Supported changes still require confirmation.

[Illustrated walkthrough of all screens and Power BI interactions](SCREENSHOTS.md).

## Read-only work

Read model metadata, query small data samples, audit measures, check contrast, format DAX or export documentation without submitting writes. Model data represents the semantic model **without the active page's report filters or slicers**.

Data samples are limited to 50 rows, with up to 8 shown in the UI, and queries have a 20-second timeout. A data panel is displayed only where useful, such as calendars and components.

Local project imports accept BIM, supported TMDL/PBIP/PBIR folders and ZIPs. They are read-only. A raw PBIX cannot be parsed by the importer: open it in Power BI Desktop and connect locally instead.

ZIP limits are 50 MB compressed, 500 MB extracted, 10,000 files and 64 MB per entry. Symlinks and folders such as `.git`, `.pbi` and `node_modules` are not traversed. Import one semantic model at a time.

## Themes

1. In Power BI Desktop, save the current theme JSON from the Themes menu if you want to edit it.
2. In Power Portal's theme generator, use the highlighted **Load report theme (JSON)** area. A TOM model connection cannot retrieve the report theme.
3. Edit colors/fonts/backgrounds while watching the local live preview.
4. Export JSON, or scroll to the end of the page, below the settings and preview, and choose **Send theme directly to Power BI**.
5. Verify the file name in the confirmation, approve, and do not interact with Power BI during import.
6. Save the PBIX in Power BI when satisfied.

Direct sending uses **visible UI Automation**, including Desktop's file dialog. The app verifies the resulting theme by exporting it and comparing the submitted properties. Generated JSON remains available if automation fails. Different Desktop versions, localization or UI changes can prevent automation.

There is no supported generic Desktop API for applying a theme to any open PBIX without dialogs. Embedded-report `applyTheme` is a different API and is not used as a Desktop workaround.

The live preview is a local implementation of the site's theme screen, not a pixel-identical representation of every Power BI visual.

![Highlighted theme import and live preview](images/theme-generator.png)

![Send theme directly to Power BI at the end of the page](images/theme-send.png)

## Write operations

Supported semantic-model writes are creating a measure, updating the selected measure's DAX, creating a new calculated calendar table, and creating/editing/deleting relationships.

Before any write:

1. **Save a separate PBIX copy.**
2. Verify the selected file/model and proposed DAX.
3. Accept the native confirmation (Cancel is the default).
4. Retain the displayed backup path and check the outcome in Power BI.
5. Save the PBIX yourself; the app does not save it automatically.

A metadata BIM backup must succeed before the write commits. Duplicate names are rejected. Updates check the previous expression to avoid overwriting concurrent changes. A failure after commit is reported as an already-written change, not a cancellation.

### Calendar tables

Read an existing calendar's calculated expression, date range and sample. Export the existing content or generate a new DAX/M/SQL script. Direct sending creates a **new** calculated table; it does not overwrite an existing calendar.

After creation, refresh in Power BI Desktop; Power Portal does not process the Desktop model. The session's **Revert created calendar** action is guarded and refuses to remove a table if its structure/expression changed or it acquired measures, relationships or DAX dependencies.

![Read, export and create-calendar actions connected to the demonstration model](images/calendar-generator.png)

The BIM backup protects model metadata, **not report pages, visuals, all data rows or the full PBIX**. Automatic full-model restore is not provided.

### HTML components

Sending a component creates an HTML measure. Add a compatible HTML visual manually to the report and assign the measure. TOM cannot automatically place visuals on a report canvas.

![HTML measure destination and direct creation button](images/components.png)

### Update measure DAX

Select a model measure in the DAX formatter, format its expression, then use **Update measure in Power BI**. This action updates that selected measure with confirmation and checks that its previous expression has not changed concurrently. It is not merely a local text export.

![Model measure selection, formatted DAX and Update measure in Power BI](images/dax-formatter.png)

## TV Tool

The highlighted **TV Tool in action** area at the top opens a [working official dashboard example](https://www.powerportal.com.br/tv_tool/painel_exemplo_power_bi_tv_tool.html) in your default browser. It requires internet and does not send the local model. The form's illustrative example still loads local sample slides.

Use published report links or local images, adjust durations/transitions and export HTML. Service links preserve supported page identifiers. The tool does **not** rotate pages of the locally open PBIX.

Private reports require appropriate Power BI licensing, Microsoft authentication, permissions and embedding policy. Report reload is not a semantic-model data refresh. Local image slides are the offline presentation option.

## Relationship map

Open the new tool to understand the model's table links in a draggable canvas, with cardinalities, filter arrows, inactive dashed lines, custom groups, colors and friendly names/icons.

![Relationship map with Facts and Dimensions groups](images/relationship-map.png)

Visual organization saves automatically per model and can be exported/imported as JSON. It does not rename model objects, change Power BI's native layout or submit relationship edits.

For a live connection, **Apply relationship to Power BI** and **Delete relationship in Power BI** submit each edit after native confirmation and a metadata backup. Endpoints, cardinalities, filter direction and active state can be changed; existing security/integrity settings are preserved. Stale metadata, duplicate links, inconsistent column types and engine validation errors are rejected explicitly.

**Relationships affect report results and filters. Save a PBIX copy first, then save the PBIX in Desktop afterward.** There is no automatic full-model rollback. [Complete relationship tutorial, persistence and limits](RELATIONSHIPS.md).

## Diagnostics and privacy

Audit/analyzer scores are heuristics. An active model connection does not supply report pages and visual placement; unavailable dimensions are not fabricated. PBIR project metadata can provide page/visual counts when present.

The app does not send model files, metadata, rows or source credentials to the portal. Exports, backups and local logs can nevertheless contain confidential information. Only share sanitized error information with support.

[Configuration](CONFIGURATION.md) · [Troubleshooting](TROUBLESHOOTING.md)

In 1.7.1, relationship drawing only prepares a draft: click/drag exact column pairs and review before applying. Right-click deletion uses the same confirmation and backup. Native autodetection is separate and may create multiple links: review in Power BI, close its dialogs, then finish in Power Portal before other writes or updates. Local group images and visibility preferences are saved only in the diagram. [New relationship workflow](RELATIONSHIPS.md#native-automatic-relationship-detection).
