This repository contains the development version of the `burd` Stata scheme. The `burd` Stata graph scheme is a reverse implementation of Cynthia Brewer's [ColorBrewer](http://colorbrewer.org/) `RdBu` diverging color scheme. I use it to teach a [Stata course](https://github.com/briatte/srqm) that is also available from GitHub.

# HOWTO

Install the scheme from SSC with the following command:

    ssc install scheme-burd, replace

Type `help scheme_burd` for usage notes, and see this [blog entry][blog] for further details and examples.

# CREDITS

All credits due to Cynthia Brewer for [ColorBrewer][cb].

Thanks to Christopher Baum for making the package available via [SSC/RePEc](http://econpapers.repec.org/software/bocbocode/s457623.htm).

[cb]: https://colorbrewer.org
[wiki]: https://github.com/briatte/burd/wiki
[blog]: http://srqm.tumblr.com/post/44632966728/plotting-with-burd

# NOTES

* The scheme is similar to the `BuRd` scheme that appears in [Maurizio Pisati's](http://www.stata.com/meeting/italy12/abstracts/materials/it12_pisati.pdf) `spmap` command for spatial data. Its default settings further draw on [Edwin Leuven's](http://leuven.economists.nl/stata.php) schemes, which in turn draw on [Svend Juul's](http://www.sscnet.ucla.edu/soc/faculty/mason/readings/juul_sj_2003.pdf) `lean` schemes.
* The qualitative colors roughly match those of `s2color` with those from the 7-class diverging schemes from ColorBrewer, and the scheme falls back on `s2color` after the ninth data class. Bar colors are shown at 50% intensity. These settings have *not* been tested for color blindness.
* The `scheme-burd3` to `scheme-burd11` files implement diverging blue-red colors for up to 11 data classes. The appropriate scale should be passed with the `scheme(burd#)` option, where `#` is the number of diverging data classes.

## EXAMPLES

    use data/nhis2009, clear // National Health Interview Survey data
    spineplot health raceb, scheme(burd5) // requires the spineplot package

![Imgur](http://i.imgur.com/ZDOHiql.png)

    use data/gss2010 if year == 2010, clear // General Social Survey data
    tab happy, gen(h_)
    gr bar h_?, over(polviews, lab(angle(25))) stack percent ///
      ti("General happiness") yti(%) ///
      legend(order(1 "happy" 2 "pretty happy" 3 "not too happy") row(1)) ///
      scheme(burd3)

![Imgur](http://i.imgur.com/D4LoYSS.png)

    use data/ess2008, clear // European Social Survey data
    tab trrtort, gen(torture_)
    gr hbar torture_* [aw=dweight], stack percent over(cntry, sort(1)des lab(labsize(*.8))) ///
      ti("Torture is never justified even to prevent terrorism") yti("") ///
      legend(rows(1) order(1 "Strongly agree" 2 "" 3 "Neither" 4 "" 5 "Strongly disagree")) ///
      scheme(burd5)

![Imgur](http://i.imgur.com/ZrhjMU1.png)

    use data/qog2011, clear // Quality of Government data
    cap gen y = wdi_fr
    cap gen x = bl_asyf25
    cap drop q
    xtile q = y, nq(4)
    local mark "ms(i) mlab(ccodewb) mlabp(0)"
    local plot "sc y x if q==1, scheme(burd4) `mark'"
    forval i = 2/4 {
      local plot = "`plot' || sc y x if q==`i', `mark'"
    }
    tw `plot' legend(off) yti(Fertility rate) xti(Female education years)

![Imgur](http://i.imgur.com/tdam0YI.png)

## Matrixes

![Imgur](http://i.imgur.com/wIlqB.png)

![Imgur](http://i.imgur.com/26kEs.png)

## Comparisons

![Imgur](http://i.imgur.com/nKAVX.png)

![Imgur](http://i.imgur.com/Fiq2u.png)

![Imgur](http://i.imgur.com/KJTsh.png)

