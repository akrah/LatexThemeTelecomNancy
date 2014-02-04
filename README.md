BeamerThemeTelecomNancy
=======================

Personnal beamer theme used for Telecom Nancy slides.

## How to include BeamerThemeTelecomNancy in my project ?

Two solutions :
  1. copy the *beamerthemeTelecomNancy.sty* file in your latex project folder
  2. copy the *beamerthemeTelecomNancy.sty* on your latex packages folder (~/.texmf-var/tex/latex/)

## How to use BeamerThemeTelecomNancy in my latex files ?

Minimal example
---------------

```latex
	\documentclass{beamer}

	\usetheme{TelecomNancy}
```

Full example
------------

```latex
	\documentclass{beamer}

	\usetheme[
		toccolumns,
		tocnbsections=3,
		addsecspace,
		backgroundtitlepage=myBackgroud.png,
		logo=myLogo.png,
		firstcolor=color1,
		secondcolor=color2,
	]{TelecomNancy}

	\definecolor{color1}{RGB}{100, 100, 100}%
	\definecolor{color2}{RGB}{220, 0, 0}%
```

## Theme options

Option					| Default value | Description
-----------------------:|:-------------:|:-------------------------------------------------------------------
**toccolumns**			|				| Summary page in two columns
**tocnbsections**		|	2			| Number of sections in the first summary column
**addsecspace**			|				| Add space between section names and section content in summary page
**backgroundtitlepage**	|				| Background image of the first page
**logo**				|				| Logo in bottom left of slides
**firstcolor**			|	gray		| Primary color
**secondcolor**			|	red			| Secondary color