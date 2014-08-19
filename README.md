A LuaLaTeX-library for theses
=============================

With this library comes a LuaLaTeX-Class which you can use in your own bachelor, master or phd thesis.


## Installation

1. Clone this repository into the home directory of your TeX-Document. It's important that the repository is cloned into the directory `Conf`.
2. Change the document class of your document as follows: `\documentClass{Conf/Conf}`
3. Give additional Meta-Information to your document. Your document should have at least 4 meta-keywords:

```tex
\author{Author(s) of the document}
\title{Title of the document}
\subject{What kind of document is this, e.g. Bachelor thesis}
\keywords{Give some comma-space-sperated (", ") keywords to help finding your document}
\mail{yourmail@example.com}
\matriculationNumber{123456789}
\studies{Bachelor of Science Studies}

\firstExaminerName{Jane Doe, PhD}
\firstExaminerInstitute{Department for Something}
\firstExaminerUniversity{University of Gotham}

\secondExaminerName{John Doe, PhD}
\secondExaminerInstitute{Department for Anything}
\secondExaminerUniversity{University of Gotham}
```

## Compiling the document

Run the following command, when your main TeX document is `document.tex`:

```bash
$ lualatex document.tex
```

If you use a bibliography, you will have to execute the following commands:

```bash
$ lualatex document.tex
$ bibtex8 document.aux
$ lualatex document.tex
$ lualatex document.tex
```

Otherwise, if you use TeXStudio, you could also use following magic comments:

```bash
% !TeX program = lualatex
% !TeX encoding = UTF-8
% !TeX spellcheck = de_DE
```
