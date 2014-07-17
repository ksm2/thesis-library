\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Thesis}

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

%===============================================================================
% Packages
%===============================================================================
\RequirePackage{fontspec} % Font handling support
\RequirePackage{geometry} % Page egometry settings
\RequirePackage{polyglossia} % Language
\RequirePackage[unicode]{hyperref} % Hyperlinks in PDFs
\RequirePackage{bookmark} % Extended bookmark support for PDF
\RequirePackage{parskip} % Space between paragraphs
\RequirePackage{amsmath, amsfonts, amssymb} % Math packages
\RequirePackage{graphicx} % For Graphics
\RequirePackage{xcolor} % For coloring texts
\RequirePackage{tikz} % The TikZ vector graphic library
\RequirePackage{fancyhdr} % Fancy headings
\RequirePackage[longnamesfirst]{natbib} % Literature
\RequirePackage{keyval} % For key-value-bib-entries
\RequirePackage[normalem]{ulem} % Better underlining
\RequirePackage{usebib} % Citations
\RequirePackage{nameref} % References for names instead of numbers
\RequirePackage[absolute]{textpos} % Absolute positioning
\RequirePackage[noindentafter]{titlesec} % Customizable ((Sub)Sub)Sections
\RequirePackage[titles]{tocloft} % Customizable ToC, LoF, …
\RequirePackage{pdfpages} % Embedding pdfs
\RequirePackage{wallpaper} % Background images
\RequirePackage{listings} % Code listings
\RequirePackage[nottoc]{tocbibind} % Using acronyms
\RequirePackage{pifont} % Zapf Dingbats
\RequirePackage{comment} % Comment blocks
\RequirePackage{array} % Better tabulars
\RequirePackage{chngcntr} % Continuous Counters
\RequirePackage{longtable} % Better tables
\RequirePackage{booktabs} % Rules in tables
\RequirePackage{epstopdf} % So we can use EPS
\RequirePackage{currfile} % Current file handling
\RequirePackage[printonlyused]{acronym} % Using acronyms

%===============================================================================
% Macros
%===============================================================================

% Register a Language key.
%
% #1 the key name.
% #2 the default value.
\def\RegisterLangKey#1#2{%
	\typeout{\languagename}%
	\expandafter\xdef\csname #1\endcsname{#2}%
	\@ifundefined{#1@\languagename}{\relax}{%
		\expandafter\xdef\csname #1\endcsname{%
			\csname #1@\languagename\endcsname}}%
}

\def\TranslateLangKey#1#2#3{%
	\expandafter\xdef\csname #1@#2\endcsname{#3}%
}

%===============================================================================
% Subfiles
%===============================================================================
\input{packages/Font}
\input{packages/Colors}
\input{packages/Language}
\input{packages/Layout}
\input{packages/HeaderFooter}
\input{packages/BibTeX}
\input{packages/LoLFix}
\input{packages/Listings}
\input{packages/ToC}
\input{packages/Sections}
\input{packages/Footnotes}
\input{packages/Translation}
\input{packages/Hyperref}
\input{packages/TikZ}