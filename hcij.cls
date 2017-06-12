\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hcij}[2016/06/10 Human-Computer Interaction Journal LaTeX Template]
\LoadClass[12pt]{article}

% Sets letter paper size and margin.
\usepackage[letterpaper, total={15.24cm,22.82cm}]{geometry}

% Font sizes.
\renewcommand{\tiny}{\fontsize{7}{8}\selectfont}
\renewcommand{\scriptsize}{\fontsize{8}{9}\selectfont}
\renewcommand{\footnotesize}{\fontsize{9}{11}\selectfont}
\renewcommand{\small}{\fontsize{11}{13.2}\selectfont}
\renewcommand{\normalsize}{\fontsize{12}{14.4}\selectfont}
\renewcommand{\large}{\fontsize{14}{16.8}\selectfont}
\renewcommand{\Large}{\fontsize{16}{19.2}\selectfont}
\renewcommand{\LARGE}{\fontsize{18}{21.6}\selectfont}
\renewcommand{\huge}{\fontsize{22}{26.4}\selectfont}
\renewcommand{\Huge}{\fontsize{26}{31.2}\selectfont}

% Uses font Times New Roman.
\usepackage{times}

% Defines the title style.
\usepackage{titling}
\pretitle{\begin{center}\bfseries\LARGE}
\posttitle{\end{center}}
\date{} % Removes date.
\author{} % Removes author.

% Defines the style of abstract.
\makeatletter
\renewenvironment{abstract}{\normalsize\begin{center}\bfseries\abstractname\end{center}\mdseries\noindent\hspace{-0.3em}}
\makeatother

% Defines the style of table of contents (toc).
\usepackage{tocloft}
\addtocontents{toc}{\cftpagenumbersoff{section}} % Removes the page numbers from sections in toc.
\addtocontents{toc}{\cftpagenumbersoff{subsection}} % Removes the page numbers from subsections in toc.
\addtocontents{toc}{\cftpagenumbersoff{subsubsection}} % Removes the page numbers from subsubsections in toc.
\addtocontents{toc}{\cftpagenumbersoff{paragraph}} % Removes page numbers of paragraphs.
\addtocontents{toc}{\cftpagenumbersoff{subparagraph}} % Removes page numbers of subparagraphs.
\renewcommand{\cftdot}{} % Removes dots between the header and page number.
%
\usepackage{titletoc}
\renewcommand{\contentsname}{\begin{center}\normalsize CONTENTS\end{center}} % Centers the title of toc.
\titlecontents{section}[1.5em]{\normalsize}{\contentslabel{1.5em}}{}{} % Fixes the alignment and text size of section in toc.
\titlecontents{subsection}[4.5em]{\normalsize}{\contentslabel{2em}}{}{} % Fixes the alignment and text size of subsection in toc.
\titlecontents{subsubsection}[6em]{\normalsize}{}{}{} % Fixes the alignment and text size of subsubsection in toc.

% Defines header styles.
\usepackage[explicit]{titlesec}
% section
\titleformat{\section}{\large\bfseries}{\thesection}{1em}{\MakeUppercase{#1}}
% subsection
\titleformat{\subsection}{\bfseries}{\thesubsection}{1em}{#1}
% subsubsection
\titleformat{\subsubsection}{\bfseries}{}{\z@}{#1}
% paragraph
\titleformat{\paragraph}{\itshape}{}{\z@}{#1}
% subparagraph
\titleformat{\subparagraph}[runin]{\bfseries\itshape}{}{1em}{#1.}

% Adds dots to the end of header.
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}

% Removes the label for smaller headers.
\renewcommand{\thesubsubsection}{}
\renewcommand{\theparagraph}{}
\renewcommand{\thesubparagraph}{}

% Sets indent and skip for paragraphs
\usepackage{indentfirst}  % Makes the first paragraph indent as well.
\setlength{\parindent}{2em}
\setlength{\parskip}{0.5em}

% Sets figure style.
\usepackage[font=bf,labelsep=period,skip=5pt]{caption}
\renewcommand{\figurename}{\MakeUppercase{Figure}}
\renewcommand{\captionsize}{\footnotesize}

% Changes the heading of references.
\renewcommand{\refname}{\normalsize\bfseries\centerline{References} } 

% Includes packages.
\usepackage{natbib}
\usepackage{mathtools}
\usepackage{enumitem}
\usepackage{booktabs}
\usepackage{multirow}
\usepackage{graphicx}
\usepackage{color}
\usepackage{balance}
\usepackage{xspace}
\usepackage{threeparttable}

% Make sure hyperref comes last of your loaded packages, 
% to give it a fighting chance of not being over-written, 
% since its job is to redefine many LaTeX commands.
\usepackage[pdftex]{hyperref}
\hypersetup{
pdftitle={Human-Computer Interaction Journal Submission},
pdfauthor={N/A},
% pdfkeywords={HCI},
bookmarksnumbered,
pdfstartview={FitH},
colorlinks,
citecolor=black,
filecolor=black,
linkcolor=black,
urlcolor=black,
breaklinks=true,
}