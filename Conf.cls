\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Conf/Conf}

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

\def\meta{%
	\makeatletter%
	\hypersetup{%
		pdftitle			= {\@title},%
		pdfsubject			= {\@subject},%
		pdfauthor			= {\@author},%
		pdfkeywords			= {\@keywords}%
	}%
	\makeatother}

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
\usepackage{natbib} % Literature
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