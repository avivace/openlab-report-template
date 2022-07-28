# openlab-report-template

A LaTeX template for the project report of CERN Openlab summer students.

It is based on LaTeX `article` class. Minimal customisation has been added to match provided template.

## Usage

### Overleaf

To use this template on [Overleaf](https://www.overleaf.com):

1. [Download this repository](https://github.com/avivace/openlab-report-template/archive/refs/heads/main.zip) as a zip file
2. Go on Overleaf, click **New Project** and then **Upload Project**
3. Select the zip file downloaded in step 1
4. You're done! The report will get compiled and you'll see a live preview on the right :) You can start writing your report in the `main.tex` file.

### Local

Use the traditional instructions, e.g.:

```bash
pdflatex --shell-escape main.tex
biber main
pdflatex --shell-escape main.tex
```

A `makefile` is also included for convenience. `make pdf` will build the PDF for you, provided you have all the dependencies installed on your system.

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

## Contributing

Contributions are welcome! Please open a PR for any improvoment.

## License

The template is released under the MIT license. CERN and CERN Openlab assets are [© CERN](https://copyright.web.cern.ch/). 
