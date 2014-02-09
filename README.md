Latex Themes for Telecom Nancy
==============================

Personnal beamer and exercice theme used at Telecom Nancy.

# Beamer theme

## How to include the Beamer theme of Telecom Nancy in my project ?

Two solutions :
  1. copy the *beamerthemeTelecomNancy.sty* file in your latex project folder
  2. copy the *beamerthemeTelecomNancy.sty* on your latex packages folder (~/.texmf-var/tex/latex/)

## How to use the Beamer theme of Telecom Nancy in my latex files ?

### Minimal example

```latex
	\documentclass{beamer}

	\usetheme{TelecomNancy}
```

### Full example

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

## Beamer theme options

Option					| Default value | Description
-----------------------:|:-------------:|:-------------------------------------------------------------------
**toccolumns**			|				| Summary page in two columns
**tocnbsections**		|	2			| Number of sections in the first summary column
**addsecspace**			|				| Add space between section names and section content in summary page
**backgroundtitlepage**	|				| Background image of the first page
**logo**				|				| Logo in bottom left of slides
**firstcolor**			|	gray		| Primary color
**secondcolor**			|	red			| Secondary color




# Exercise class

## How to include the exercice class of Telecom Nancy in my project ?

Two solutions :
  1. copy the *TelecomNancy.cls* file in your latex project folder
  2. copy the *TelecomNancy.cls* on your latex packages folder (~/.texmf-var/tex/latex/)

## How to use the exercice class of Telecom Nancy in my latex files ?

### Minimal example

```latex
	\documentclass{TelecomNancy}

	\begin{document}

		\coursename{Name of the course}
		\studentlevel{1st year}
		\doctitle{Exercices of the first course}

		\exercise{
			You can write here instructions of the first exercise.
		}{
			\question First question of the current exercise.
			\question Second question of the first exercise.
		}

	\end{document}
```

### Full example

```latex
	\documentclass[margin=1.5cm,
				   titlewidth=0.6,
				   sansserif,
				   firstcolor=color1,
				   secondcolor=color2,
				   logo=myLogo.png,
				   footband=myFootBand.png]{TelecomNancy}

	\definecolor{color1}{RGB}{100, 100, 100}
	\definecolor{color2}{RGB}{220, 0, 0}

	\begin{document}

		\coursename{Name of the course}
		\studentlevel{1st year}
		\doctitle{Exercices of the first course}
		
		\globalinstruction{The global instructions}

		\exercise{
			You can write here instructions of the first exercise.
		}{
			\question First question of the current exercise.
			\question Second question of the first exercise.
		}

		\exercise{
			Instructions of the second exercise.
		}{
			\question First question of the second exercise.
		}

	\end{document}
```

## Class options

Option			| Default value | Description
---------------:|:-------------:|:-------------------------------------------------------------------
**margin**		|	1.5cm		| Left and right margins
**titlewidth**	|	0.6			| Percentage of the title width
**sansserif**	|				| Add this option to use sans serif text.
**firstcolor**	|	gray		| Primary color
**secondcolor**	|	red			| Secondary color
**logo**		|				| Logo in bottom left of page
**footband**	|				| Foot band image in right of the logo


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/akrah/latexthemetelecomnancy/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

