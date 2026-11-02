# Refresh Analysis

<!-- language-selector -->
[🇺🇸 English](REFRESH-ANALYSIS.md) · [🇧🇷 Português](pt-BR/REFRESH-ANALYSIS.md) · [🇪🇸 Español](es/REFRESH-ANALYSIS.md) · [🇨🇳 简体中文](zh-CN/REFRESH-ANALYSIS.md) · [🇫🇷 Français](fr/REFRESH-ANALYSIS.md) · [🇯🇵 日本語](ja/REFRESH-ANALYSIS.md) · [🇮🇳 हिन्दी](hi/REFRESH-ANALYSIS.md) · [🇸🇦 العربية](ar/REFRESH-ANALYSIS.md)
<!-- /language-selector -->

![Refresh Analysis](images/refresh-analysis.png)

## Start and safety

Connect to the intended open PBIX, open Refresh Analysis and select Refresh and analyze. Confirm the file name. The trace starts before the native Home > Refresh button is invoked; tables are not refreshed sequentially through TOM. Keep Power BI open and resolve source credentials, errors or cancellation there. A BIM backup cannot restore refreshed data.

Native refresh queries sources and replaces imported data. Save a PBIX copy. Resolve credentials and errors in Power BI; tracing does not cancel refresh or include every Power Query helper query.

## Interpret the measurements

Observed activity is the union of engine intervals mapped exactly to each table, avoiding double counting of nested phases. It is not pure source-query time or a proven critical path. The observed total runs from launch until completion is detected, includes UI/polling overhead, and excludes the later row counts. Missing table mappings are reported separately.

Timings represent observed engine activity, not exclusive duration of each M query. Do not sum parallel tasks. Non-loaded queries, M steps and per-query CPU/memory usage are unavailable.

Automatic completion requires observed refresh-command completion and a ready Power BI window. Close native result dialogs. Manual Finish capture is always incomplete, not evidence of success and not a cancellation of refresh. Engine/trace errors are explicit. If capture is interrupted, no completed analysis is claimed.

## History and export

Rows are counted after capture, outside the timer. DirectQuery/DirectLake are not queried. Missing events do not mean zero time. Up to 30 analyses per model are kept on this computer; none are sent to the portal.

Select a saved execution and a comparison execution to see timing and row-count differences for matching table names. Cache, source load, data volume and parallelism affect comparisons; differences do not prove a cause. JSON preserves unavailable values as null; CSV leaves them empty and protects spreadsheet formulas. History is local, scoped by the same model identity as the diagram, not stored in PBIX. Diagrams/history cannot distinguish files with identical exposed identities; verify the model name. Exports contain model/table names and counts: review them before sharing.

<!-- refresh-correlation -->
Only engine progress tied to an active refresh command through exact RequestID/ActivityID correlation is measured. Unrelated visual-query work is excluded. Some Power BI versions may omit these identifiers: a table timing can remain unavailable even when refresh executes.

## Native launch and recovery

Refresh Analysis is now immediately below Relationship map in the sidebar and home gallery. Native button discovery ignores the duplicate Home tabs belonging to DAX Query View and TMDL View, avoiding “Ambiguous Power BI control: home”. Select Report, Data or Model view in Power BI if native controls are unavailable.

Start stays disabled while confirmation, validation and trace startup are pending; Finish capture is hidden until capture is ready. This prevents a second launch from incorrectly reporting “Finish the active Power BI operation before refreshing”. A failure proven to occur before native invocation stops the trace, checks cleanup and permits retry. If invocation might already have occurred, the error remains visible and the capture stays pending: review Power BI, finish its refresh and close dialogs before Finish capture. Repeated requests resume the existing capture instead of starting another refresh. Legitimate active Power BI operations still need to finish first.
