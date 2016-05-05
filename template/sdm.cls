\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sdm}[2015/02/02 v0.1
LaTeX document class for 
Université Rennes 1]

%extension de article
\LoadClassWithOptions{article}
\RequirePackage{fullpage}
\RequirePackage{graphicx}

\def\supervisorOne#1{\gdef\@supervisorOne{#1}}
\def\supervisorTwo#1{\gdef\@supervisorTwo{#1}}
\def\teamOne#1{\gdef\@teamOne{#1}}
\def\supervisorThree#1{\gdef\@supervisorThree{#1}}
\def\teamTwo#1{\gdef\@teamTwo{#1}}
\def\school#1{\gdef\@school{#1}}
\def\domain#1{\gdef\@domain{#1}}
\def\abstract#1{\gdef\@abstract{#1}}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\renewcommand{\maketitle}{
\begin{titlepage}

\begin{center}

% Upper part of the page
\includegraphics[width=0.8\textwidth]{./logo/header}\\[1cm]
\textsc{\Large Master research Internship}
\vspace{1cm}

\includegraphics[width=0.09\textwidth]{./logo/rennes1}
\includegraphics[width=0.09\textwidth]{./logo/ENS-Rennes}
\includegraphics[width=0.1\textwidth] {./logo/insa-rennes}
\includegraphics[width=0.08\textwidth]{./logo/supelec}
\includegraphics[width=0.06\textwidth]{./logo/esir}
\includegraphics[width=0.07\textwidth]{./logo/enssat}
\includegraphics[width=0.07\textwidth]{./logo/UBO}
\includegraphics[width=0.09\textwidth]{./logo/logo_ENIB}
\includegraphics[width=0.05\textwidth]{./logo/tel-br}
\includegraphics[width=0.05\textwidth]{./logo/ensta}
\includegraphics[width=0.05\textwidth]{./logo/logoUbs}

\vspace{1cm} 
\textsc{\Large Bibliographic report }\\[0.5cm]

% The title of your report
\HRule \\[0.4cm]
{ \Large \bfseries {\@title} }\\[0.4cm]

\HRule \\[1.5cm]
% The domain of your research 
%\textbf{KEEP  WITHIN THIS LIST (see model.tex) ONE OR TWO DOMAIN(S) THAT CORRESPOND(S) TO YOUR INTERNSHIP - COMMENT OR REMOVE ALL THE OTHER ONES -}
\begin{flushleft}
\textbf{\@domain}
\end{flushleft}




% Author and supervisor(s)
\begin{minipage}{0.4\textwidth}
\begin{flushleft} \large
\emph{Author:}\\
\@author
\end{flushleft}
\end{minipage}
\begin{minipage}{0.4\textwidth}
\begin{flushright} \large
\emph{Supervisors:} \\
%
% name(s) of your supervisor(s)
\@supervisorOne\\
\@supervisorTwo\\
\@teamOne\\
\@supervisorThree\\
% Name of your team
\@teamTwo\\
\end{flushright}
\end{minipage}

\vfill


% INCLUDE HERE THE LOGO OF YOUR INSTITUTION
%\textbf{INSERT ``\%'' IN FRONT OF ALL THE LOGO YOU DO NOT NEED - A SINGLE ONE SHOULD REMAIN AT THE BOTTOM OF THIS PAGE}
\begin{flushleft}
\includegraphics[width=0.09\textwidth]{./logo/\@school}
\end{flushleft}
\end{center}
\end{titlepage}

\begin{flushleft}
\textbf{Abstract:} \@abstract
\end{flushleft}

%\newpage

% compile twice to get the table of contents
\tableofcontents
\thispagestyle{empty}
\newpage


\setcounter{page}{1} 
}