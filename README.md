
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2022

<!-- badges: start -->

[![R-CMD-check](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/R-CMD-check.yaml)
[![test-coverage-check](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/test-coverage.yaml/badge.svg)](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/test-coverage.yaml)
[![lint
check](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/lint.yaml)](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/lint.yaml)
<!-- badges: end -->

bis620.2022 is a package to plot the time-series data, with basic plot
functions and spectral signature calculation as data process. It would
be shown with UKBiobank accelerometry data.

It could be used for data containing columns named `time` or `freq` and
other numeric variable.

refer to the example data `ukb_accel` for more details.

### build situation overview:

[test coverage
page](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/test-coverage.yaml)

[lint
results](https://github.com/JinxuanBian/bis620.2022/blob/main/.github/workflows/lint.yaml)

## Installation

You can install the development version of bis620.2022 from
[GitHub](https://github.com/JinxuanBian/bis620.2022) with:

``` r
# install.packages("devtools")
devtools::install_github("JinxuanBian/bis620.2022")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bis620.2022)
# call of UKBiobank accelerometry data
data(ukb_accel)
# plots UKBiobank accelerometry data
ukb_accel[1:1000, ] |> accel_plot()
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
# calculate spectral signature by taking the modulus of the
# Fourier coefficients of the signal
ukb_accel[1:1000, ] |>
  spectral_signature(take_log = FALSE) |>
  accel_plot()
```

<img src="man/figures/README-example-2.png" width="100%" />
