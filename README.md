Data Train \| OT-SC-WS-04: Evaluating machine learning and artificial
intelligence algorithms
================
Max Westphal (<max.westphal@mevis.fraunhofer.de>)

------------------------------------------------------------------------

## Overview

This training course covers model and algorithm evaluation methods in
machine learning and is part of [Data
Train](https://www.uni-bremen.de/en/research-alliance/research-data/data-train)
program of the [U Bremen Research
Alliance](https://www.uni-bremen.de/en/research-alliance).

Course instructors: Werner Brannath, Max Westphal, Pascal Rink

------------------------------------------------------------------------

## Requirements

For local usage, a recent R version is required, available at
<https://cran.r-project.org/>. The course material is tested with R
Version 4.1.1.

As an IDE, we recommend to use the most recent version of Rstudio,
available <https://www.rstudio.com/products/rstudio/>.

If you want to utilize the RStudio Server setup at
<https://rstudio.informatik.uni-bremen.de/>, please login as outlined
via mail a few days ago.

------------------------------------------------------------------------

## Installation

If you are working locally, please follow the following steps:

``` r
## Install required packages for installation:
install.packages(c("usethis", "renv"))

## You may want to change the destination directory:
destdir <- NULL

## Create local version of the project: 
usethis::create_from_github("https://github.com/maxwestphal/DTME_2021.git", destdir)

## Download all further required packages (execute within new project 'DTME_2021'):
## (needs to be confirmed in the R console and will take a while)
renv::restore()
```

Alternatively (recommended for RStudio Server), please open the terminal
(2nd tab next to the R console) and execute the following command.

``` bash
git clone https://github.com/maxwestphal/DTME_2021
```

After that, open the new R project DTME\_2021 and run `renv::restore()`
in the R console.

------------------------------------------------------------------------

## Usage

R coding exercises are divided into two Rmd files. Follow the
documentation which guide you from assignment to assignment. We
recommend to use the Visual Editor (Ctrl+Shift+F4) in Rstudio to work
with the Rmd files. Solutions will be made available at the end of each
session.

------------------------------------------------------------------------

## Bug reports

If you encounter a bug or a missing dependency, please open an issue in
GitHub (<https://github.com/maxwestphal/DTME_2021.git>) or write a short
message to <max.westphal@mevis.fraunhofer.de>.
