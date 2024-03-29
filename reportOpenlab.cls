%--------------------- Definition ------------------------
\ProvidesClass{reportOpenlab}[2022/07/27 LaTeX version of CERN openlab report]
% minimal customisation of LaTeX article class to match openlab template
\LoadClass[a4paper,12pt]{article}

%--------------------- Packages ------------------------

\RequirePackage[utf8]{inputenc} % Special characters
\RequirePackage[T1]{fontenc}
\RequirePackage{float} % Placement of images
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption} % Caption is centralised
\RequirePackage{fancyhdr} % Custom headers and footers
\RequirePackage{biblatex} % bibliography
\RequirePackage{url}  % Links
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    linkcolor={openlabbluedark},
    citecolor={openlabviolet},
    urlcolor={openlabbluedark}
}
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2.5cm]{geometry} % Set margins
\RequirePackage{xcolor} % Custom openlab colours
\definecolor{openlabbluelight}{RGB}{42,125,191}
\definecolor{openlabbluedark}{RGB}{64,70,147}
\definecolor{openlabblueverydark}{RGB}{47,50,85}
\definecolor{openlabviolet}{RGB}{64,70,147}
\definecolor{openlabgreen}{RGB}{45,178,159}

\RequirePackage{tikz} % tikz graphics
\usetikzlibrary{calc,positioning}

% code snippets
\newboolean{printCode}
\RequirePackage{ifthen}
\AtBeginDocument{%
  \IfFileExists{minted.sty}{%
    \RequirePackage{minted}%
    \newenvironment{longlisting}{\captionsetup{type=listing}}{} % custom environment that allows to break pages for long code snippets
    \setboolean{printCode}{true}%
  }{%
    \setboolean{printCode}{false}
    \PackageWarning{reportOpenlab}{%
      Package minted not available.
    }%
  }%
}

% sets colour of sections, subsections, ...
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries\color{openlabgreen}}}
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\large\bfseries\color{openlabgreen}}}
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\bfseries\color{openlabgreen}}}

\RequirePackage{biblatex} % bibliography

%--------------------- Titlepage ------------------------

\DeclareRobustCommand*{\institute}[1]{\gdef\@institute{#1}}
\DeclareRobustCommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand{\maketitlepage}{
\begin{titlepage}
        \begin{tikzpicture}[overlay,remember picture]
            \node at ($(current page.north west)+(2.5cm,-3cm)$) {\includegraphics[width=1.5\textwidth]{assets/front.png}};
        \end{tikzpicture}
        \vskip8cm
        \begin{center}
                {\textbf{\color{openlabbluelight}{\MakeUppercase{\Huge {\@title}}}}}\\
        \end{center}
        \vskip0.5cm
        \hspace{0.05\textwidth} { \LARGE\textbf{\color{openlabbluedark}{{\@date}}}}\\
        \vskip2cm
        \hspace{0.3\textwidth}
        \begin{minipage}{0.7\textwidth}
            \large
            {\color{openlabblueverydark}{
                \textbf{AUTHOR(S):}\\\@author\vskip0.5cm\@institute
                \vskip0.5cm
                \textbf{SUPERVISOR(S):}\\\@supervisor
            }}
        \end{minipage}
        \vfill
        \begin{center}\includegraphics[width=0.4\textwidth]{assets/cern_openlab_logo.png}\end{center}
\end{titlepage}
\clearpage
}

%--------------------- Specifications ------------------------

\newcommand{\specification}[1]{
{\color{openlabviolet}{
    \noindent\textbf{\large PROJECT SPECIFICATION}\\
    \includegraphics[width=0.7\textwidth]{assets/hline1.png}\\
}}
#1
\clearpage
}

%--------------------- Abstract ------------------------

\renewcommand{\abstract}[1]{
{\color{openlabviolet}{
    \noindent\textbf{\large ABSTRACT}\\
    \includegraphics[width=0.7\textwidth]{assets/hline1.png}\\
}}
#1
\clearpage
}

%--------------------- Table of contents ------------------------

\renewcommand{\contentsname}{{\color{openlabviolet}{\noindent\textbf{\large TABLE OF CONTENTS\\\includegraphics[width=0.7\textwidth]{assets/hline1.png}}}}}
\let\oldtableofcontents\tableofcontents
\renewcommand\tableofcontents{
    {\color{openlabviolet}{
    \oldtableofcontents
    \clearpage
}}}

%--------------------- Headers and footers ------------------------
% clear default layout
\fancyhf{}
\renewcommand{\headrulewidth}{0pt} % remove header rule
\setlength{\headheight}{15pt} % it removes compilation warning
\renewcommand{\footrulewidth}{0pt} % remove footer rule
% define header
\DeclareRobustCommand*{\reportnumber}[1]{\gdef\@reportnumber{#1}}
\fancyhead[L]{{\scriptsize\color{openlabviolet}{CERN openlab Report  \@reportnumber \begin{tikzpicture}[overlay,remember picture] \node[anchor=north east, xshift=-0.5cm] at (current page.north east) {\includegraphics[width=1.5cm]{assets/cern_openlab_logo_small.png}};\end{tikzpicture}}}}
% define footer
\fancyfoot[R]{{\scriptsize\color{openlabviolet}{\thepage}}}
\fancyfoot[L]{{\scriptsize\color{openlabviolet}{\MakeUppercase\@title}}%
    \begin{tikzpicture}[overlay,remember picture,node distance=-0.2cm] 
    \node[yshift=0.75cm] at (current page.south) (centre){\includegraphics[width=0.33\textwidth]{assets/hline2.png}};%
    \node[left=of centre, anchor=east] {\includegraphics[width=0.33\textwidth]{assets/hline2.png}};%
    \node[right=of centre, anchor=west] {\includegraphics[width=0.33\textwidth]{assets/hline2.png}};\end{tikzpicture}}
\pagestyle{fancy}