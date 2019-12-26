
githubPages
===========

I have created this repository to generate static websites for my projects based on the README.md files. 
The skeletons used here are modified according to the target repo for which I want to create the website.


Dependencies to install
=======================
```r
# Install release version from CRAN
install.packages("pkgdown")

# Install development version from GitHub
devtools::install_github("r-lib/pkgdown")
```


To build
========

After modifying the relevant files, run the following command from R console.

``` r
pkgdown::build_site()
```

Website pages are generated on docs folder. 

Then you can copy the `docs/` folder to target repo directory and run 

```
./updateWebsite.sh
```

Known issues
============

Pkgdown generates `reference` tab in the homepage (reference they mean here is not references used to
build repo) even though there is nothing in the path it looks for.

In order to fix this `build_site` needs to be tweaked so that `build_home` doesn't build placeholder 
for reference, later call `build_reference` needs to be disabled. 

Currently I have decided not to worry about fix and just live with it.
