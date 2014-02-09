%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (c) 2014, Adrien Krähenbühl <adrien.krahenbuhl@gmail.com>
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without modification,
% are permitted provided that the following conditions are met:
% 
% * Redistributions of source code must retain the above copyright notice, this
%   list of conditions and the following disclaimer.
% 
% * Redistributions in binary form must reproduce the above copyright notice, this
%   list of conditions and the following disclaimer in the documentation and/or
%   other materials provided with the distribution.
% 
% * Neither the name of Adrien Krähenbühl nor the names of its
%   contributors may be used to endorse or promote products derived from
%   this software without specific prior written permission.
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
% ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
% DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
% ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
% (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
% ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
% (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
% SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Class templateTelecomNancy for exercices.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{TelecomNancy}[2014/02/06 Exercices class for Telecom Nancy, v1.0]
 
% Base class
 
\LoadClass[12pt]{article}
 
% extensions

\RequirePackage{xkeyval}
 
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[frenchb]{babel}
\frenchbsetup{StandardLists=true}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[tikz]{bclogo}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{colortbl}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

% Options

\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{article}}

\setlength{\headheight}{4cm}
\DeclareOptionX{headheight}[4cm]{\setlength{\headheight}{#1}}

\newlength{\pmargin}
\setlength{\pmargin}{1.5cm}
\DeclareOptionX{margin}[1.5cm]{\setlength{\pmargin}{#1}}

\newlength{\titlewidth}
\setlength{\titlewidth}{.6\paperwidth}
\DeclareOptionX{titlewidth}[.6\paperwidth]{\setlength{\titlewidth}{#1\paperwidth}}

\def\firstcolor{gray}
\DeclareOptionX{firstcolor}[red]{\def\firstcolor{#1}}

\def\secondcolor{red}
\DeclareOptionX{secondcolor}[gray]{\def\secondcolor{#1}}

\newif\ifsansserif
\DeclareOptionX{sansserif}{\sansseriftrue}

\def\logo{}
\DeclareOptionX{logo}[]{\def\logo{#1}}

\def\footband{}
\DeclareOptionX{footband}[]{\def\footband{#1}}

\ProcessOptionsX


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Length

\setlength{\footskip}{1.5cm}
\geometry{margin=\pmargin,top=\headheight,bottom=\footskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonts

\ifsansserif
	\renewcommand{\familydefault}{\sfdefault}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header

\renewcommand{\headrulewidth}{0mm}
\fancyhead[L]{
	\hspace{-\pmargin}
	\hspace{.8cm}
	\begin{minipage}{\headwidth}%
		\vspace{-2\headheight}%
		\vspace{6cm}%
		\begin{bclogo}[couleur=white,barre=none,logo=,marge=6,noborder=true]{}%
			\color{\secondcolor}
				%\sffamily%
				\textbf{\large \thestudentlevel}\\
				\textbf{\large \thecoursename}\\
				Page \thepage/\pageref{LastPage}
		\end{bclogo}%
	\end{minipage}
}
\fancyhead[C]{
}
\fancyhead[R]{
	\begin{minipage}{\titlewidth}%
		\vspace{-2\headheight}%
		\vspace{6cm}%
		\begin{bclogo}[couleur=\firstcolor,arrondi=.4,ombre=true,couleurOmbre=black!40,epOmbre=.2,barre=none,logo=,marge=10,noborder=true]{}%
			\vspace{-.55cm}
			%\centering \sffamily \color{white}{\textbf{\Large \thedoctitle}}%
			\centering \color{white}{\textbf{\Large \thedoctitle}}%
		\end{bclogo}%
	\end{minipage}%
	\hspace{-\pmargin}
	\hspace{-1.3cm}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Footer

\fancyfootoffset{\pmargin}
\renewcommand{\footrulewidth}{0mm}
\fancyfoot[L]{
	\ifx\logo\@empty%
	\else%
		\vbox{
			\hspace{.25\footskip}
			\includegraphics[height=.7\footskip]{\logo}
			\vspace{.15\footskip}
		}
	\fi
}
\fancyfoot[C]{}
\fancyfoot[R]{
	\ifx\footband\@empty%
	\else%
		\vbox{
			\includegraphics[width=.83\headwidth,height=\footskip]{\footband}
		}
	\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Text variables

\def\@doctitle{Template example}
\newcommand{\doctitle}[1]{\def\@doctitle{#1}}
\newcommand{\thedoctitle}{\@doctitle}

\def\@studentlevel{1A}
\newcommand{\studentlevel}[1]{\def\@studentlevel{#1}}
\newcommand{\thestudentlevel}[1]{\@studentlevel}

\def\@coursename{Course name}
\newcommand{\coursename}[1]{\def\@coursename{#1}}
\newcommand{\thecoursename}[1]{\@coursename}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commands

\newcommand{\globalinstruction}[1]{%
	~\vspace{-2em}%
	{\color{\secondcolor}\hrule depth .3mm \vspace{1em}}%
	{\color{\secondcolor} \large \bfseries \itshape Consignes globales}\\%
		\vspace{-.5em}\\%
		{\indent \textit{#1}}%
	{\vspace{1em}\color{\secondcolor}\hrule depth .3mm}%
	\vspace{2em}%
}

\newcounter{ExoCount}
\setcounter{ExoCount}{1}

\newcommand{\exercise}[2]{%
	\begin{table}[ht]%
		\arrayrulecolor{\secondcolor}%
		\setlength{\arrayrulewidth}{1.5mm}%
		\noindent\begin{tabular}{|l}%
			\begin{minipage}[l]{.97\columnwidth}%
				\textbf{\large Exercice \theExoCount}\\
				\vspace{-.8em}\\%
				#1
			\end{minipage}%
		\end{tabular}%
		\vspace{-1em}
	\end{table}%
	\begin{enumerate}[leftmargin=*,label=(\theExoCount.\theQuestCount),font=\itshape]%
		#2
	\end{enumerate}%
	\vspace{1em}%
	\stepcounter{ExoCount}
}

\newcounter{QuestCount}[ExoCount]
\setcounter{QuestCount}{0}

\newcommand{\question}{%
	\stepcounter{QuestCount}
	\item
}

\renewcommand{\emph}[1]{\textbf{\color{\secondcolor}#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%