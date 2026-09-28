# Changelog

## [0.2.1] — 2026-09-26

Data is now collected in a single `Nookly/` folder: database, images, settings. You can copy it to another computer. The path is shown in settings, and the folder can be opened and moved. If the chosen location already has a database, the app offers to open it instead of creating a new one. In the browser, exporting and importing the whole archive replaces the folder.

Once a day on launch, an archive of the database and settings is written to `Nookly/.backups/` (7 copies are kept). Settings and the start screen show up to five recent folders. The bottom of the sidebar shows that your data is saved and how much space it takes. Next to the path there is a button that opens the folder in the file explorer.

Inside a block's text: bold, italic, underline, strikethrough, code, text color, and background color. `[[page]]` and `@` link to other pages, `@2026-09-26` inserts a date, and `[text](url)` adds an external link. The style bar appears when the cursor is in a block.

## [0.2.0] — 2026-09-24

### Added

- The slash menu takes the text after `/` as its own filter (arrows and Enter pick the type)
- Images are compressed and stored separately from the block text, and identical files are not duplicated
- Export a page to Markdown and PDF
- Import zip/Markdown from Notion and Obsidian (pages, images, Notion CSV databases)
- Settings: theme (system / light / dark) and interface language (Russian / English)
- A calmer interface, an app icon, and a short loading animation
- Undo and redo: `Ctrl+Z` and `Ctrl+Shift+Z` (text, images, blocks)
- Autosave, block drag and drop, callout (`/tip`), and a collapsible toggle
- Settings: interface size, density, animations, page width, hotkeys

## [0.1.0] — 2026-09-06

First public release (still under the name Notchy at the time). The product was renamed **Nookly**.

### Added

- Page tree, icons, drag and drop
- Block editor (text, headings, lists, checkboxes, quote, divider, image, code)
- Databases: table and kanban
- Page search (`Ctrl+K`)
- Offline work, light and dark theme
- Windows, Linux, browser

### Not yet

- Sync between devices
- iOS, Android, macOS
- Text formatting inside a block (bold, links)

[0.1.0]: https://github.com/notchy-ru/nookly-release/releases/tag/v0.1.0
[0.2.1]: https://github.com/notchy-ru/nookly-release/releases/tag/v0.2.1
