\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{colloquium}
[2014/02/03 0.1 Simple template for CSE 590 Colloquium reports]

%% Pass every options to report
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{}
\ProcessOptions\relax

%% Load "article" class
\LoadClass[letterpaper,12pt]{article}

%% Load necessary macro packages here
% Set up MSWord-like margins
% \RequirePackage[tmargin=1in,bmargin=1in,lmargin=1.25in,rmargin=1.25in]{geometry}
% Font colors
\RequirePackage{xcolor}
% Used for caculation of \fontsize command
\RequirePackage{calc}
% Users could specify their prefered fonts
\RequirePackage{fontspec}
% Date control
\RequirePackage{datetime}
% Title format control. The optional parameter is essential.
\RequirePackage[explicit]{titlesec}
% Other packages in common use. *Add packages you think necessary here*!!
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{amsmath}
\RequirePackage{setspace}

%% Various useful internal macros
% Define font for title
\newfontfamily\clq@coursefont{Cambria}
\newfontfamily\clq@titlefont{Calibri:style=Regular}
% Define fonts. Note: Learned from ThuThesis.
\newlength\clq@linespace
\newcommand{\clq@fontsize}[1]{%
  \setlength{\clq@linespace}{#1*\real{\baselinestretch}}%
  \fontsize{#1}{\clq@linespace}\selectfont%
}
% Define project information
\def\clq@title{Title of the colloquium}
\def\clq@id{1}
\def\clq@year{2014}
\def\clq@month{\shortmonthname}
\def\clq@day{\twodigit{\day}}
\def\clq@speaker{}%
\def\clq@institute{}%
\def\clq@reportauthor{Junpeng Qiu\\juq116@cse.psu.edu\\338E IST
  Building\\Advisor:~Dr.~Guohong~Cao}

%% Set up the title
\newcommand{\clq@maketitle}{%
  \begin{titlepage}
    \vspace*{1em}
    \begin{center}
      \textbf{\clq@coursefont\clq@fontsize{26pt}CSE 590 – Colloquium Report
        \clq@id}\\[3em]
      \begin{spacing}{2}
      \clq@titlefont
      {\clq@fontsize{22pt}''\clq@title''}\\[5mm]
      {\clq@fontsize{18pt}By \clq@speaker, \clq@institute}
      {\clq@fontsize{18pt}\clq@month~\clq@day, \clq@year}
      \end{spacing}
      \vfill\hfill
      \onehalfspacing
      \clq@fontsize{18pt}
       \begin{tabular}{@{}l@{}}
         \clq@reportauthor
       \end{tabular}
     \end{center}
  \end{titlepage}
}
\newcommand{\makeclqtitle}{\clq@maketitle}

%% Change spacing.
\doublespacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}
\setlist{topsep=0pt,parsep=0pt,partopsep=0pt}

%% New commands provided for users
\newcommand{\clqinfo}[2]{\def\clq@id{#1}\def\clq@title{#2}}
\newcommand{\clqspeaker}[2]{\def\clq@speaker{#1}\def\clq@institute{#2}}
\newcommand{\clqdate}[2]{\def\clq@month{#1}\def\clq@day{#2}}

\endinput
