# Screenshots and Power BI interactions

[Back to home](../README.md) · [Install](INSTALLATION.md) · [Safety guide](USAGE.md)

**Application screenshots: Power Portal Desktop 1.6.1, English interface.**
The screenshots use **synthetic demonstration metadata and query values**, not a customer PBIX. Connected states illustrate supported UI actions; no customer model was changed to make these images. Native file-picker labels can follow the Windows language. The actual Power BI ribbon screenshot was supplied by the owner and cropped to remove the private file title.

## Open Power Portal from External Tools

After installation, restart Power BI Desktop, open a PBIX, and click **External Tools > Power Portal**.

![Power Portal in the actual Power BI External Tools ribbon](images/powerbi-external-tools.png)

The Portuguese tab **Ferramentas externas** corresponds to **External Tools** in English. The installer registers the icon in this ribbon. Clicking it launches **a separate Power Portal window connected to the model of the open file**. It is an external companion application, not a report visual, embedded pane, or internal Microsoft extension.

## Home and navigation

![Home gallery, all ten tool buttons and the startup notice](images/home.png)

Home shows the official tool covers and short descriptions. The sidebar fits all ten tools **without navigation scrolling** at supported window sizes. **Consulting and training** sits below **About the development**, with the ownership logos below. Language flags stay in two rows.

![Collapsed sidebar keeps tool icons, flags, About and consulting accessible](images/collapsed-sidebar.png)

Collapse the sidebar for more working space; the preference persists. Icons retain accessible names and tooltips. The main work area and individual tool forms can still scroll; the no-scroll change applies to the sidebar catalog.

## Connect to a file already open in Power BI

![Startup notice and explicit open-file selection](images/connect-open-model.png)

When started from a Windows shortcut, the app detects available local Power BI models and explains that you can connect directly to an open file. Choose **Find open models**, verify the file name and click **Connect to selected model**. With multiple files open, choose the intended one explicitly.

Launching from the External Tools ribbon instead passes that Desktop instance's connection automatically and reads its metadata. **Connecting does not write changes.**

## Direct interactions with the open Power BI file

These are not limited to downloading text or JSON:

| Screen/action | Reads from or changes Power BI? | Safeguard |
|---|---|---|
| Refresh Power BI model | Reads tables, columns, measures and relationships from the selected file's semantic model. | No model write. |
| Query live data/date ranges/samples | Reads actual model values through the local engine. | Structured, bounded queries; not active-page filters. |
| Send theme directly to Power BI | Applies the generated JSON to the selected report window. | Confirmation, visible UI import and exported-theme verification. |
| Create calendar in Power BI | Creates a new calculated date table in the semantic model. | Confirmation and metadata backup; refresh afterward in Desktop. |
| Create HTML measure in Power BI | Creates a new measure in the chosen model table. | Confirmation and metadata backup; add the HTML visual manually. |
| Update measure in Power BI | Writes the formatted DAX to the selected existing measure. | Confirmation, metadata backup and concurrent-change protection. |

**Save a separate PBIX copy before applying changes.** Confirm the target file and expression, then save the PBIX in Desktop afterward. The app never silently saves the PBIX.

### Live model data

![Table, column and measure selectors with a queried demonstration result](images/live-model-data.png)

Select a table/column/measure and query a value, row count, column sample or date range. The connected notice explains how to refresh metadata or send confirmed changes. This data panel appears where relevant, such as calendars and components.

### Theme generator

![Live theme preview and prominent Send theme directly to Power BI action](images/theme-generator.png)

Edit colors/fonts and watch the live preview. Use **Send theme directly to Power BI** to apply to the selected Desktop window, or export JSON for manual import.

To start from the existing report theme, save its JSON in Desktop and load it here. A semantic-model connection does not read report themes. Direct sending still uses the **visible import dialog**: no supported generic Desktop theme API eliminates it. Do not interact with Power BI while automation runs.

### Calendar generator

![Existing calendar selection, sample export and Create calendar in Power BI](images/calendar-generator.png)

Read an existing calendar's expression/date range/sample, export DAX or sampled JSON, and generate a new calendar. **Create calendar in Power BI** creates a new calculated table with backup and confirmation, rather than replacing the selected existing calendar.

Refresh in Desktop after creation. Guarded calendar reversal is available only when the created table still matches and has no dependencies.

### Component library

![Component catalog with the direct HTML-measure creation toolbar](images/components.png)

Choose the destination table and a new measure name. The builder uses model field/measure names and supports **Create HTML measure in Power BI**. The measure is written to the model after confirmation.

A compatible HTML visual must be added to the report manually and assigned that measure; this button does not place a visual on the page.

### DAX formatter

![Select a model measure, format it and update it directly in Power BI](images/dax-formatter.png)

Select the existing model measure, format its expression, then choose **Update measure in Power BI** to submit the DAX back to that measure. Copy/export actions are separate. The update refuses concurrent expression changes and requires confirmation.

## Remaining tools

### Power BI TV Tool

![TV controls, HTML export and local illustrative presentation](images/tv-tool.png)

Rotate published report pages or local images, set durations/transitions, preview and export HTML. The screen above uses the bundled illustrative presentation. TV does **not** rotate pages of the open local PBIX. Private published reports require appropriate Microsoft sign-in/licensing/permissions.

### Performance checklist

![Performance checklist configuration and model-informed assessment](images/performance-checklist.png)

Review model-informed checklist items and manual report characteristics. Scores are heuristic guidance, not measured visual timings.

### Contrast calculator

![Color contrast calculator](images/contrast-calculator.png)

Check readability/contrast against WCAG thresholds. This is a local analysis tool and does not alter report formatting automatically.

### PBIP/PBIR analyzer

![Model/project structure and heuristic analyzer results](images/project-analyzer.png)

Analyze the loaded project's available structure. A live semantic-model connection does not provide report page/visual metadata, so unavailable dimensions are reported as partial. Imported PBIR project metadata can provide additional counts.

### Semantic model documenter

![Table/column/measure documentation from synthetic model metadata](images/model-documenter.png)

Read and export table/column/measure/relationship documentation in Markdown or JSON. This tool does not modify the model. Exports may contain confidential names and DAX; store them appropriately.

### Measure auditor

![Measure audit results for the demonstration model](images/measure-auditor.png)

Audit model measures or supplied DAX with heuristic naming/size/delimiter checks. It does not validate DAX semantics or measure actual report performance.

## Consulting and training

![Excelência consulting, training and contact area](images/consulting-training.png)

Discover Power BI consulting, Microsoft Fabric, data engineering and complete solutions. In Company training, featured videos and contact actions are included. WhatsApp/email open a draft or browser page; no message or appointment is sent automatically.

[Release notes](../CHANGELOG.md) · [Troubleshooting](TROUBLESHOOTING.md)
