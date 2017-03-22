% Intro Options
\ProvidesClass{resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.00cm, vmargin=0.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
%\usepackage{zh_CN-Adobefonts}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/SourceHanSansCN/]{SourceHanSansCN-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-Regular}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[5]{
    %\centering{
    \leftline{
        \sffamily
        \fontspec[Path = fonts/zh_CN-Adobe/]{AdobeHeitiStd-Regular}\fontsize{16pt}{0.1cm}\selectfont #1 
        \fontspec[Path = fonts/lato/]{Lato-Light}\selectfont #2
    }
    \vspace{5pt}
    %\leftline{
    %   \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{16pt}{20pt}\selectfont #3
    %}
    %\indent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
    %\vspace{-5pt}
}


\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-Bold}\fontsize{14pt}{14pt}\selectfont \raggedright}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-Medium}\fontsize{11pt}{11pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\desc}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/SourceHanSansCN/]{SourceHanSansCN-Light}\fontsize{10pt}{10pt}\selectfont {#1 \\} \normalfont}

% subtitle command
\newcommand{\subtitle}[1]{\color{headings}\raggedright\fontspec[Path = fonts/zh_CN-Adobe/]{AdobeHeitiStd-Regular}\fontsize{11pt}{11pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{5pt}}

% Bullet Lists with fewer gaps command
\newenvironment{lists}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}