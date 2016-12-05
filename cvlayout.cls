% Oma Curriculum vitae class file for rapid CV generation :D

\NeedsTeXFormat{LaTeX2e} % This uses common LaTeX
\ProvidesClass{cvpohja}[2016/06/18 CV format LaTeX class]

\LoadClass[12pt,a4paper,twoside]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath, amsfonts, amssymb}
\RequirePackage{graphicx,fancyhdr,titling, url}
\RequirePackage{wrapfig,enumitem,lastpage}
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage[pdftex,
            pdfauthor={Joonas Taivainen},
            pdftitle={Curriculum Vitae},
            pdfsubject={CV},
            pdfkeywords={CV, Curriculum Vitae, Resumé},
            pdfproducer={Latex with hyperref},
            pdfcreator={pdflatex}]{hyperref}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}
\graphicspath{PATH/TO/IMAGES}

\newcommand{\basicformats}{
    %%%%%%%%%%%%%%%%%%%        TITLE        %%%%%%%%%%%%%%%%%%%
    \pagestyle{fancyplain}
    \fancyhf{}
    \pagenumbering{arabic}
    % Footers
    \fancyfoot[LO]{\small{ NAME }}
    \fancyfoot[RO]{\thepage / 2}
    \fancyfoot[RE]{\small{SCHOOL/DEGREE/CURRENT POSITION}}
    \fancyfoot[LE]{\thepage / 2}

    % Header and footer lines
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}

    %%%%%%%%%%%%%%%%%%%     INFORMATION     %%%%%%%%%%%%%%%%%%%
    \begin{flushleft}
        \vspace*{-1cm}
        \noindent \small{
            \textbf{NAME} \\
            Gender \hspace*{20pt} NATIONALITY \hspace*{4.7cm} \textbf{Curriculum Vitae}\\
            PHONE \\
            EMAIL \hspace*{2.5cm} \today\\
            LINKEDIN/GITHUB (OPTIONAL)
        }
    \end{flushleft}

    % PORTRAIT
    % \begin{wrapfigure}{r}{0.5\textwidth}
    %     \vspace*{-3.8cm}
    %     \begin{flushright}
    %         \includegraphics[scale=0.09]{IMAGEPATH}
    %     \end{flushright}
    % \end{wrapfigure}

    \vspace*{-10pt}
    \noindent\rule{\textwidth}{1pt}
    \vspace*{-10pt}
}

%%%%%%%%%%%%%%%   CURRICULUM VITAE COMMANDS   %%%%%%%%%%%%%%%
\newcommand{\cvcontents}[8]{
    \begin{description}
        \item \textbf{PROFILE} \hfill
            {#1}
        \item \textbf{EDUCATION} \hfill
            {#2}
        \item \textbf{WORK EXPERIENCE} \hfill
            {#3}
        \item \textbf{LANGUAGE SKILLS} \hfill
            {#4}
        \item \textbf{COMPUTER SKILLS} \hfill
            {#5}
        \item \textbf{HOBBIES} \hfill
            {#6}
        \item \textbf{ADDITIONAL INFORMATION} \hfill
            {#7}
        \item \textbf{REFERENCES} \hfill
            {#8}
    \end{description}
}

\newcommand{\cvitem}[1]{
    \begin{itemize}[label = {}, leftmargin = 3cm]
    \setlength\itemsep{0em}
        \item #1
    \end{itemize}
}
