# openlab-report-template
LaTeX template for the project report of CERN Openlab summer students. It is based on LaTeX `article` class. Minimal customisation has been added to match provided template.

## How to start

You may use LaTeX locally, to compile follow the traditional instructions, e.g.:

```bash
pdflatex main.tex
biber main
pdflatex main.tex
```

You may prefer to write this report online, using [Overleaf](https://www.overleaf.com),. It enables sharing, reviewing, and commenting on the document, as well as feature a live preview.

## Document structure

Full structure of this template is placed below. You need to edit `main.tex` providing details of your project (title, names, specifications, abstract) and the content of the report. Bibliography in BibTeX can be placed in `bibliography.bib`.

```bash
.
|-- assets
|   |-- cern_openlab_logo.png
|   |-- cern_openlab_logo_small.png
|   |-- example.png
|   |-- front.png
|   |-- hline1.png
|   `-- hline2.png
|-- bibliography.bib
|-- main.tex
|-- README.md
`-- reportOpenlab.cls
```

`reportOpenlab.cls` and `assets` contain customisation of LaTeX article to CERN openlab theme.


## Figures, code snippets, bibliography

Examples are given in the template, but please consult LaTeX documentation for further details. For instance, visit [Overleaf webpage](https://www.overleaf.com/learn/latex/Creating_a_document_in_LaTeX).
