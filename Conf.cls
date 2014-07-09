\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Conf}

%===============================================================================
% Options
%===============================================================================
\LoadClass[a4paper, 12pt, notitlepage, openany, oneside]{book}
\RequirePackage{kvoptions}
\RequirePackage{kvoptions-patch}

\SetupKeyvalOptions{
	family=ThesisLibrary,
	prefix=ThesisLibrary@
}

\DeclareStringOption[000000]{brand}
\DeclareStringOption[german]{language}

\ProcessKeyvalOptions*

%===============================================================================
% Meta-Definitions
%===============================================================================
\def\subject#1{\gdef\@subject{#1}}
\def\@subject{\@latex@error{No \noexpand\subject given}\@ehc}

\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{\@latex@error{No \noexpand\keywords given}\@ehc}

\def\mail#1{\gdef\@mail{#1}}
\def\@mail{\@latex@error{No \noexpand\mail given}\@ehc}

\def\matriculationNumber#1{\gdef\@matriculationNumber{#1}}
\def\@matriculationNumber{\@latex@error{No \noexpand\matriculationNumber given}\@ehc}

\def\studies#1{\gdef\@studies{#1}}
\def\@studies{\@latex@error{No \noexpand\studies given}\@ehc}

\def\firstExaminerName#1{\gdef\@firstExaminerName{#1}}
\def\@firstExaminerName{\@latex@error{No \noexpand\firstExaminerName given}\@ehc}

\def\firstExaminerInstitute#1{\gdef\@firstExaminerInstitute{#1}}
\def\@firstExaminerInstitute{\@latex@error{No \noexpand\firstExaminerInstitute given}\@ehc}

\def\firstExaminerUniversity#1{\gdef\@firstExaminerUniversity{#1}}
\def\@firstExaminerUniversity{\@latex@error{No \noexpand\firstExaminerUniversity given}\@ehc}

\def\secondExaminerName#1{\gdef\@secondExaminerName{#1}}
\def\@secondExaminerName{\@latex@error{No \noexpand\secondExaminerName given}\@ehc}

\def\secondExaminerInstitute#1{\gdef\@secondExaminerInstitute{#1}}
\def\@secondExaminerInstitute{\@latex@error{No \noexpand\secondExaminerInstitute given}\@ehc}

\def\secondExaminerUniversity#1{\gdef\@secondExaminerUniversity{#1}}
\def\@secondExaminerUniversity{\@latex@error{No \noexpand\secondExaminerUniversity given}\@ehc}

% Write Meta Information to PDF
\AtBeginDocument{%
	\hypersetup{%
		pdftitle			= {\@title},%
		pdfsubject			= {\@subject},%
		pdfauthor			= {\@author},%
		pdfkeywords			= {\@keywords}%
	} %
}

%===============================================================================
% Packages
%===============================================================================
\usepackage{fontspec} % Font handling support
\usepackage{geometry} % Page egometry settings
\usepackage{polyglossia} % Language
\usepackage{hyperref} % Hyperlinks in PDFs
\usepackage{bookmark} % Extended bookmark support for PDF
\usepackage{parskip} % Space between paragraphs
\usepackage{amsmath, amsfonts, amssymb} % Math packages
\usepackage{graphicx} % For Graphics
\usepackage{xcolor} % For coloring texts
\usepackage{tikz} % The TikZ vector graphic library
\usepackage{fancyhdr} % Fancy headings
\usepackage[longnamesfirst]{natbib} % Literature
\usepackage{keyval} % For key-value-bib-entries
\usepackage[normalem]{ulem} % Better underlining
\usepackage{usebib} % Citations
\usepackage{nameref} % References for names instead of numbers
\usepackage[absolute]{textpos} % Absolute positioning
\usepackage[noindentafter]{titlesec} % Customizable ((Sub)Sub)Sections
\usepackage[titles]{tocloft} % Customizable ToC, LoF, …
\usepackage{pdfpages} % Embedding pdfs
\usepackage{wallpaper} % Background images
\usepackage{listings} % Code listings
\usepackage[printonlyused]{acronym} % Using acronyms
\usepackage[nottoc]{tocbibind} % Using acronyms
\usepackage{pifont} % Zapf Dingbats
\usepackage{comment} % Comment blocks
\usepackage{array} % Better tabulars
\usepackage{chngcntr} % Continuous Counters
\usepackage{longtable} % Better tables
\usepackage{booktabs} % Rules in tables

\input{Conf/Font}
\input{Conf/Language}
\input{Conf/Colors}
\input{Conf/Hyperref}
\input{Conf/Layout}
\input{Conf/HeaderFooter}
\input{Conf/TikZ}
\input{Conf/BibTeX}
\input{Conf/LoLFix}
\input{Conf/Listings}
\input{Conf/ToC}
\input{Conf/Sections}
\input{Conf/Footnotes}
\RequirePackage{Conf/translation}