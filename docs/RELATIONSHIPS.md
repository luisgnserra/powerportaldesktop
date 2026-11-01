# Relationship map

[Back to home](../README.md) · [Screenshots](SCREENSHOTS.md) · [Model safety](USAGE.md)

Available in **Power Portal Desktop 1.7.0**. This is a new Desktop-only tool, separate from Power BI's own Model view. It reads real table/column relationships and can apply confirmed changes to the connected local semantic model.

![Relationship canvas with Facts and Dimensions groups, cardinalities and colored links](images/relationship-map.png)

## Open your model

1. Save a separate copy of the PBIX.
2. Launch **External Tools > Power Portal** from Power BI Desktop, or explicitly find and select the open file.
3. Open **Relationship map** in the sidebar or home gallery.

Imported BIM/PBIP/TMDL projects support the diagram and visual customization, but **relationship writes require a live local Power BI connection**. Re-read the model after changes made elsewhere.

## Understand the links

- Each box represents an actual table. The original table name remains visible below its friendly heading.
- Columns involved in relationships are prioritized in the box. Up to eight columns are displayed, with their data types; all columns remain available in the relationship editor.
- **1** identifies the unique side; **\*** identifies the many side.
- Solid lines are active relationships; dashed lines are inactive.
- Arrows indicate filter propagation: a single TOM direction filters **from the destination table to the source table**, not the order in which you selected columns. Bidirectional links display both directions. **?** denotes Automatic, where the engine decides.
- Click a line, or use the relationship dropdown, to inspect its exact endpoints, cardinality and filter settings.
- Unsupported non-single-column relationships are explicitly counted in model metadata and warned about in the interface. They are not fabricated or edited.

**These are semantic-model relationships, not SQL INNER/LEFT/RIGHT JOIN selections.** Cardinality and filter direction influence report calculations and filter propagation.

## Arrange a teaching-friendly diagram

- Drag table headings freely in both directions.
- Drag a group's heading to move its member tables together.
- Drag the background to pan. Scroll or use **+ / -** to zoom.
- **Fit tables** frames the current model; a new diagram is initially fitted automatically.
- **Arrange by groups** lays out tables according to their assigned groups. This rearranges only the diagram, not the model.
- Focus a table heading and use arrow keys to move it by 10 units; Shift + arrow moves 50 units.
- Select a table to choose its friendly name, icon, background color and group.
- **Facts** and **Dimensions** are optional starting groups, not automatic classification of table roles.
- Create custom groups, then edit their name, icon and background color. Removing a group does not delete its tables.
- Select an existing relationship to choose its line color.

**Colors, positions, groups, icons and friendly names do not rename Power BI objects or change its native Model view layout.** They belong to this companion diagram.

## Save and share the organization

Visual changes save automatically in the current Windows user's profile:

```text
%APPDATA%\powerportal-desktop\relationship-diagrams\<model-key>.json
```

Writes use an intermediate file and atomic replacement. A failure is shown explicitly with **Retry saving**; the application does not pretend the layout was saved.

**Export diagram JSON** creates a portable visual-layout file. **Import diagram JSON** validates that format and checks that its table names exist in the currently loaded model. It restores the organization only: **importing a diagram never creates, changes or deletes model relationships**.

The JSON includes table names, friendly names, group settings, line colors and the viewport. It does not contain data rows, DAX or source connection credentials. Table/group names can still reveal business context: share only sanitized files.

Live-model profiles are identified using the Power BI window/file name and table lineage tags, falling back to table names. Imported-project profiles also use the selected local path. Power BI discovery does not reliably expose the full PBIX path. Renaming a file or replacing table identities may create a new profile; copies with the same name and lineage tags can share a profile. Use exported JSON to maintain separate layouts when necessary.

Stale table/line entries are removed when metadata is refreshed. A deleted table's old position is not kept as a fictional table. Layouts are retained at uninstall along with other user settings.

## Apply each relationship edit to Power BI

![Relationship fields and Apply/Delete actions](images/relationship-editor.png)

### Create

1. Choose **New relationship**.
2. Select source/destination tables and columns.
3. Set cardinality, filter direction and active/inactive state.
4. Choose **Apply relationship to Power BI**.

### Edit, activate or deactivate

1. Click an existing line or choose it in the dropdown.
2. Change endpoints, cardinalities, filter direction or **Active**.
3. Choose **Apply relationship to Power BI** for this edit.

### Delete

Select the existing relationship and choose **Delete relationship in Power BI**.

Every real edit uses the same safe sequence:

1. A native confirmation identifies the selected Power BI file and displays the previous/new relationship states. **Cancel is the default**.
2. After approval, a full metadata BIM backup and local attempt record must be written before the model change.
3. The connector opens the model again and verifies the existing relationship still matches the snapshot read by the editor. Stale/deleted/renamed relationships are rejected instead of overwritten.
4. Columns must have matching data types and belong to different tables. Duplicate column pairs and a second active link directly between the same table pair are rejected. Deactivate the existing active link first.
5. TOM commits through `SaveChanges`; the engine remains responsible for uniqueness, valid cardinality and ambiguous filter-path validation. Engine errors are shown, not bypassed.
6. The application reloads model metadata after a successful commit. A reload failure is reported as an already-written change, not a cancellation.
7. **Save the PBIX in Power BI Desktop** to persist the changed model in the file.

Row-level-security filter behavior, **Assume Referential Integrity**, and other unexposed settings of existing relationships are preserved. This editor does not expose a way to change RLS or enable Assume Referential Integrity. New links use default security/integrity settings.

Preserving those properties does not mean activation, deletion or endpoint changes cannot affect security-filter propagation. Review relationships used by RLS with your model administrator before confirming a change.

Updates/themes/model writes cannot run concurrently with a relationship write. Switching the connected model during a write is blocked; requests from a different selected connection are rejected.

## Backup and limits

- The BIM backup contains model metadata, not a complete PBIX, report canvas or all data rows. Its path is reported after successful writes or connector failures.
- **There is no automatic relationship rollback/full-model restore button.** Keep the separate PBIX copy and review the reported backup with your model administrator if needed.
- Diagram JSON is limited to 5 MB on import, 2,000 table entries, 200 groups and 10,000 line-style entries. Zoom ranges from 15% to 200%.
- The tool does not calculate SQL joins, merge queries, classify facts/dimensions automatically or execute arbitrary scripts.
- Live Desktop writes can be restricted by model mode, Desktop version, permissions or enterprise policy. Do not bypass those restrictions.

[Configuration and retained data](CONFIGURATION.md#data-locations) · [Troubleshooting](TROUBLESHOOTING.md)
