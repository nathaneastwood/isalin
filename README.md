<!-- README.md is generated from README.Rmd. Please edit that file -->
isalin
======

[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/euler)](http://cran.r-project.org/package=euler)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Overview
--------

The goal of `isalin` is to provide translations for different argots.
Why “isalin”? Because it is the Filipino word for “translate” and that
was the first language I chose on Google Translate.

Installation
------------

You can install the package directly from GitHub using the [`devtools`
package](https://github.com/r-lib/devtools).

``` r
# install.packages("devtools")
install_github("nathaneastwood/isalin")
```

Useage
------

### Pig Latin

``` r
pig_latin(c("hello", "world"))
[1] "ellohay" "orldway"
```
