\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hwTemplate}
\LoadClass[11pt,letter]{article}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{lmodern}
\usepackage[hidelinks]{hyperref}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{tikz}
\usepackage{scrlayer-scrpage}

\textwidth=16cm
\textheight=20.5cm
% \topmargin=0cm
% \headheight=0pt
% \headsep=0pt
 \oddsidemargin=0cm
 \evensidemargin=0cm
%\footskip=1cm
% \parskip=5pt
% \parindent=0pt
% \headheight=15pt\advance\topmargin by -\headheight
%\headsep=20pt\advance\topmargin by -\headheight


%\renewcommand\thesection{Task \arabic{section}}
%\newcommand\skipsection{\stepcounter{section}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\E}{\mathbb{E}}

%Titel, arguments for maketitle are: Name1, Name2, Übungsgruppennummer, Tutorname, Blattnummer
\renewcommand{\maketitle}[5]
{
	\thispagestyle{empty}
	\noindent	
	\begin{tabular}[t]{l}
		{\large AM 205}\\
		{\large Fall 2021}	
	\end{tabular}
	\hfill 
	\begin{tabular}[t]{l}
		{\large Group: {#1}}
	\end{tabular}\\[2ex]
	\rule{\linewidth}{1pt}
	\begin{center}
	{\Huge \sf POV-Ray Group Project}\\[1.5ex]
	\rule{\linewidth}{1pt} 	
	\end{center}
	   
	\ihead{AM 205 POV-Ray}
	\ohead{{#1}}
	\cfoot[\pagemark]{\pagemark}
	\pagestyle{scrheadings}
}