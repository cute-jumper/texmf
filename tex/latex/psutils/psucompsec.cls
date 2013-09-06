\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{psucompsec}
[2013/09/04 0.1 Easy template for CSE 543 Computer Security's Review]
\def\version{0.1dev}

% Pass every options to article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{}
\ProcessOptions\relax

% Load "article" class
\LoadClass{article}

% Macro packages
\RequirePackage[parfill]{parskip}

% New commands
\newcommand{\papertitle}[1]{\title{Review of ``#1''}}
\newcommand{\qjp}{Junpeng Qiu}
\newcommand{\psuid}{900275380}
\newcommand{\reviewsec}[2]{\textbf{#1}: #2\par}

% Use this easy .cls file together with Emacs's Yasnippet, and you will gain
% huge writing promotion! Happy hacking!
\endinput
