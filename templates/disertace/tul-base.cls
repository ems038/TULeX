%% tul-base.cls
%% Document class for TUL Ekonomická fakulta dissertations and theses
%% Technical University of Liberec - Faculty of Economics
%% Compatible with LuaLaTeX
%%
%% Author: Generated for TUL EF dissertation formatting
%% Based on: Směrnice děkana EF TUL č. 4/2022

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tul-base}[2026/01/30 TUL EF Base Document Class]

%% Based on book class
\LoadClass[11pt,a4paper,twoside,openright]{book}

%% ============================================================================
%% REQUIRED PACKAGES
%% ============================================================================

%% Page geometry - margins as per TUL template
\RequirePackage[
    a4paper,
    left=30mm,
    right=25mm,
    top=25mm,
    bottom=25mm,
    headheight=15pt
]{geometry}

%% Font setup - Inter font with LuaLaTeX
\RequirePackage{fontspec}
\RequirePackage{unicode-math}

%% Try to load Inter font, fallback to Latin Modern
\IfFontExistsTF{Inter}{
    \setmainfont{Inter}[
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = *-Italic,
        BoldItalicFont = *-BoldItalic,
        Scale = 1.0
    ]
}{
    \setmainfont{Latin Modern Roman}
    \ClassWarningNoLine{tul-base}{Inter font not found. Using Latin Modern Roman as fallback}
}

%% Math font
\setmathfont{Latin Modern Math}

%% Language support - Czech and English
%% Using polyglossia (recommended for LuaLaTeX)
\RequirePackage{polyglossia}
\setdefaultlanguage{czech}
\setotherlanguage{english}
\RequirePackage{csquotes}

%% Line spacing
\RequirePackage{setspace}
\onehalfspacing  % 1.5 line spacing

%% Paragraph formatting - as per TUL Word template
%% No first-line indentation, 15pt gap between paragraphs
\RequirePackage{parskip}
\setlength{\parindent}{0pt}
\setlength{\parskip}{15pt plus 2pt minus 1pt}

%% Colors - TUL green
\RequirePackage{xcolor}
\definecolor{tulgreen}{HTML}{8DC63F}
\definecolor{tuldarkgreen}{HTML}{6B9C2F}

%% Graphics and figures
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}

%% Tables
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable}

%% Math support
\RequirePackage{amsmath}
%% Note: unicode-math already provides symbols, amssymb conflicts with it

%% Lists - compact spacing as per TUL Word template (contextualSpacing)
\RequirePackage{enumitem}
\setlist{
    itemsep=0pt,        % No extra space between items
    parsep=0pt,         % No extra space between paragraphs within items
    topsep=0pt,         % No extra space before/after list
    partopsep=0pt       % No extra space if list starts a paragraph
}

%% Better references
\RequirePackage{url}
\RequirePackage{hyperref}

%% Bibliography - BibLaTeX with ISO 690:2022 Harvard style (ČSN ISO 690)
\RequirePackage[
    backend=biber,
    style=iso-authoryear,    % ISO 690 Harvard (author-year) style
    sorting=nyt,
    maxbibnames=99,
    giveninits=true,         % ISO 690 uses initials for given names
    uniquename=init,
    doi=true,
    url=true,
    isbn=false,
    urldate=long,
    autolang=other           % Automatic language handling per entry
]{biblatex}

%% PDF metadata and hyperlinks
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=tuldarkgreen,
    filecolor=black,
    urlcolor=tuldarkgreen,
    bookmarksdepth=3,
    pdfencoding=auto,
    psdextra
}

%% ============================================================================
%% CUSTOM COMMANDS FOR THESIS METADATA
%% ============================================================================

\newcommand{\@thesistitle}{}
\newcommand{\thesistitle}[1]{\renewcommand{\@thesistitle}{#1}}

\newcommand{\@thesistitleen}{}
\newcommand{\thesistitleen}[1]{\renewcommand{\@thesistitleen}{#1}}

\newcommand{\@thesisauthor}{}
\renewcommand{\author}[1]{\renewcommand{\@thesisauthor}{#1}}

\newcommand{\@thesissupervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\@thesissupervisor}{#1}}

\newcommand{\@studyprogram}{}
\newcommand{\studyprogram}[1]{\renewcommand{\@studyprogram}{#1}}

\newcommand{\@specialization}{}
\newcommand{\specialization}[1]{\renewcommand{\@specialization}{#1}}

\newcommand{\@thesisyear}{\the\year}
\newcommand{\thesisyear}[1]{\renewcommand{\@thesisyear}{#1}}

\newcommand{\@department}{}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}

%% ============================================================================
%% HEADING STYLES
%% ============================================================================

\RequirePackage{titlesec}

%% Chapter formatting
\titleformat{\chapter}[display]
    {\normalfont\huge\bfseries}
    {\chaptertitlename\ \thechapter}
    {20pt}
    {\Huge}
\titlespacing*{\chapter}{0pt}{0pt}{40pt}

%% Section formatting
\titleformat{\section}
    {\normalfont\Large\bfseries}
    {\thesection}
    {1em}
    {}
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

%% Subsection formatting
\titleformat{\subsection}
    {\normalfont\large\bfseries}
    {\thesubsection}
    {1em}
    {}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

%% ============================================================================
%% TABLE OF CONTENTS FORMATTING
%% ============================================================================

\RequirePackage{tocloft}

%% Dots in TOC
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

%% ============================================================================
%% CAPTION FORMATTING
%% ============================================================================

\captionsetup{
    format=plain,
    labelfont=bf,
    textfont=it,
    justification=centering,
    singlelinecheck=true,
    skip=10pt
}

%% Czech names for captions (polyglossia-compatible)
\gappto\captionsczech{%
    \renewcommand{\figurename}{Obrázek}%
    \renewcommand{\tablename}{Tabulka}%
    \renewcommand{\contentsname}{Obsah}%
    \renewcommand{\listfigurename}{Seznam ilustrací (obrázků)}%
    \renewcommand{\listtablename}{Seznam tabulek}%
    \renewcommand{\bibname}{Seznam použité literatury}%
    \renewcommand{\chaptername}{Kapitola}%
    \renewcommand{\appendixname}{Příloha}%
}

%% ============================================================================
%% CUSTOM ENVIRONMENTS
%% ============================================================================

%% Annotation environment
\newenvironment{annotation}[1][Anotace]{
    \chapter*{#1}
    \addcontentsline{toc}{chapter}{#1}
}{
    \newpage
}

%% Keywords environment
\newenvironment{keywords}[1][Klíčová slova]{
    \section*{#1}
}{
    \bigskip
}

%% Abbreviations list
\newenvironment{abbreviations}[1][Seznam použitých zkratek, značek a symbolů]{
    \chapter*{#1}
    \addcontentsline{toc}{chapter}{#1}
    \begin{description}[style=nextline,leftmargin=3cm,font=\normalfont\bfseries]
}{
    \end{description}
}

%% ============================================================================
%% TITLE PAGE COMMANDS
%% ============================================================================

%% Czech title page
\newcommand{\maketitlepage}{
    \begin{titlepage}
        \centering
        \vspace*{1cm}

        % Logo
        \includegraphics[width=0.6\textwidth]{assets/tul-ef-logo-1.png}

        \vspace{3cm}

        % Title
        {\Huge\bfseries\@thesistitle\par}

        \vspace{1cm}

        {\Large Disertační práce\par}

        \vfill

        % Study program and author info
        \begin{flushleft}
        \textit{Studijní program:} \@studyprogram\par
        \ifx\@specialization\@empty\else
            \textit{Specializace:} \@specialization\par
        \fi
        \textit{Autor práce:} \@thesisauthor\par
        \textit{Školitel:} \@thesissupervisor\par
        \end{flushleft}

        \vspace{1cm}

        {\large \@thesisyear\par}
    \end{titlepage}
    \cleardoublepage
}

%% English title page (for reference)
\newcommand{\maketitlepageen}{
    \begin{titlepage}
        \centering
        \vspace*{1cm}

        % Logo
        \includegraphics[width=0.6\textwidth]{assets/tul-ef-logo-1.png}

        \vspace{3cm}

        % Title
        {\Huge\bfseries\@thesistitleen\par}

        \vspace{1cm}

        {\Large Doctoral Thesis\par}

        \vfill

        % Study program and author info
        \begin{flushleft}
        \textit{Study programme:} \@studyprogram\par
        \ifx\@specialization\@empty\else
            \textit{Specialization:} \@specialization\par
        \fi
        \textit{Author:} \@thesisauthor\par
        \textit{Supervisor:} \@thesissupervisor\par
        \end{flushleft}

        \vspace{1cm}

        {\large \@thesisyear\par}
    \end{titlepage}
    \cleardoublepage
}

%% ============================================================================
%% PAGE NUMBERING
%% ============================================================================

%% Start with roman numerals for front matter
\pagenumbering{roman}

%% Command to switch to arabic numbering for main content
\newcommand{\startmainmatter}{
    \cleardoublepage
    \pagenumbering{arabic}
}

%% ============================================================================
%% APPENDICES
%% ============================================================================

\RequirePackage[toc,page]{appendix}

\gappto\captionsczech{%
    \renewcommand{\appendixname}{Příloha}%
    \renewcommand{\appendixpagename}{Přílohy}%
    \renewcommand{\appendixtocname}{Seznam příloh}%
}

%% ============================================================================
%% HEADER AND FOOTER
%% ============================================================================

\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
%% Show chapter/section titles without numbers in headers
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\fancyhead[RE]{\nouppercase{\leftmark}}
\fancyhead[LO]{\nouppercase{\rightmark}}
\renewcommand{\headrulewidth}{0.4pt}

%% Plain style for chapter pages
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
}

%% ============================================================================
%% END OF CLASS FILE
%% ============================================================================

\endinput
