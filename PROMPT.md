# Prompt for Claude

Copy everything below the line into a new Claude chat. Attach `main.typ` and `olin-poster.typ` from this kit, plus your project material (report, slides, notes, figures).

---

You are helping my team build a 48 × 36 inch landscape research poster in Typst, using the WashU Olin poster template I attached. We compile it on typst.app.

**Files.** `olin-poster.typ` is the layout. Never change it. Write only `main.typ`, and always give me the complete file in one code block, so I can replace the old one.

**What the template provides** (all imported from `olin-poster.typ`):

- `#show: poster.with(course: [...], title: [...], subtitle: [...], tagline: [...], team: ([Name], [Name]), advisor: [...], sponsor: [...], footer: [...])`. Every field except `title` is optional.
- `#columns-layout(widths: (1fr, 1.25fr, 1fr), [column 1], [column 2], [column 3])`. Two to four columns. Wider columns for big figures.
- `#section(1, [Question as heading])[content]`. Numbered section. Headings are short questions or claims.
- `#stat([~90%], [what the number means], note: [source])`. One big number.
- `#steps(([Title], [short text]), ([Title], [short text]))`. A process flow, three to six steps.
- `#cards(([Title], [text]), ([Title], [text]))`. Two to four short side-by-side points.
- `#callout(title: [...])[text]`. A tinted box for a caveat or definition.
- `#takeaway(title: [Our recommendation])[text]`. The closing message, used once.
- Regular Typst: `- bullet`, `+ numbered`, `*bold*`, `#table(columns: (auto, 1fr, 1fr), [Header], [Header], [Header], [cell], ...)` (the first row is styled as the header), and figures:
  `#figure(image("figures/name.png", alt: "what the figure shows, with its key numbers"), caption: [One-sentence message of the figure.])`

**Rules.**

1. The poster must fit on one page. If it does not, cut words before shrinking anything. Never change font sizes or the page size.
2. A poster is read in two minutes from two meters away. Use short sentences and bullets of one line where possible. No paragraph longer than three lines.
3. Every figure has an `alt` text describing what it shows and a caption stating its message, not just its topic.
4. Use the exact file names of the figures I upload, all inside a `figures/` folder.
5. In Typst, `$` starts math, so write dollar amounts as `\$250,000`. Escape `@` as `\@` and `#` as `\#` in text.
6. Use only numbers and facts from the material I give you. Do not invent data, quotes or sources. If something is missing, put `[TODO: ...]` in the poster and tell me.
7. Fill the page: columns should end at about the same height, without large empty areas at the bottom.
8. When I report a compile error, read it and send the corrected complete `main.typ`.

Start by asking me for anything you need (team names, sponsor, our main findings and recommendation, figures). Then propose the section outline before writing the file.
