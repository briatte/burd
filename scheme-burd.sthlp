{smcl}
{* *! version 1.0.0  19mar2013}{...}
{cmd:help scheme_burd}{right:Version 1.0.0}
{hline}
{vieweralsosee "[G-4] schemes intro" "help schemes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] set scheme" "help set_scheme"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option"}{...}
{viewerjumpto "Syntax" "scheme_burd##syntax"}{...}
{viewerjumpto "Description" "scheme_burd##description"}{...}
{viewerjumpto "Examples" "scheme_burd##examples"}{...}
{viewerjumpto "References" "scheme_burd##references"}{...}
{viewerjumpto "Author" "scheme_burd##author"}{...}
{viewerjumpto "Also see" "scheme_burd##seealso"}{...}

{title:Title}

{pstd}
Scheme description: burd
{p_end}


{marker syntax}{...}
{title:Syntax}

	{it:schemename}{col 22}Foreground{col 36}Background{col 48}Description
	{hline 69}
	{cmd:burd}{...}
{col 22}color{...}
{col 36}white{...}
{col 48}BuRd, a blue-red color scheme
	{cmd:burd3}{...}
{col 22}color{...}
{col 36}white{...}
{col 48}BuRd with 3 diverging classes
	{cmd:burd4}{...}
{col 22}color{...}
{col 36}white{...}
{col 48}BuRd with 4 diverging classes
	...
	{cmd:burd10}{...}
{col 22}color{...}
{col 36}white{...}
{col 48}BuRd with 10 diverging classes
	{cmd:burd11}{...}
{col 22}color{...}
{col 36}white{...}
{col 48}BuRd with 11 diverging classes
	{hline 69}

{pstd}
For instance, you might type

{p 8 16 2}
{cmd:. graph}
...{cmd:,}
...
{cmd:scheme(burd)}

{p 8 16 2}
{cmd:. graph}
...{cmd:,}
...
{cmd:scheme(burd5)}

{p 8 16 2}
{cmd:. set}
{cmd:scheme}
{cmd:burd}
[{cmd:,}
{cmdab:perm:anently}]

{pstd}
See {manhelpi scheme_option G-3} and {manhelp set_scheme G-2:set scheme}.


{marker description}{...}
{title:Description}

{pstd}
Schemes determine the overall look of a graph; see
{manhelp schemes G-4:schemes intro}.

{pstd}
The {cmd:burd} scheme is an alternative rendering of the {help scheme_s2color:s2color} scheme based on
 Svend Juul's {cmd:lean} scheme (Juul 2003) and Cynthia Brewer's "RdBu" ColorBrewer scheme (Brewer 2002).
  
{pstd}
The {cmd:burd3} to {cmd:burd11} sub-schemes provide blue-to-red diverging color scales for up to 11 data classes,
 which might be useful to plot ordered response scales in survey data.
{p_end}

{pstd}
Details and examples of the BuRd scheme in use are available through its development repository at GitHub: {browse "https://github.com/briatte/burd"}

{marker references}{...}
{title:References}

{p 4 8 2}
Brewer, C. 2002. ColorBrewer. {browse "http://www.colorbrewer.org"}

{p 4 8 2}
Juul, S. 2003. Lean mainstream schemes for Stata 8 graphics. 
{it:Stata Journal} 3(3): 295-301.


{marker author}{...}
{title:Author}

{pstd}
Fran{c c,}ois Briatte.
Email: {browse "mailto:f.briatte@ed.ac.uk":f.briatte@ed.ac.uk}
{p_end}

{pstd}
Inspiration for this scheme came from Nicholas Cox and Edwin Leuven.
{p_end}


{marker seealso}{...}
{title:Also see}

{p 4 13 2}
{bind:}Manual:  {hi:[G] schemes}, {hi:[G] {it:scheme_option}}, {hi:[G] set scheme}

{p 4 13 2}
Online:  help for {help schemes}, {it:{help scheme_option}}, {help set_scheme}, {help scheme_s2color}
{break} help for {help scheme_lean} if installed
{p_end}

