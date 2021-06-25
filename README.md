
github-pages
===========

I have created this repository to generate static websites for my projects based on the README.md files. 
The skeletons used here are modified according to the target repo for which I want to create the website.

Usage:
=======
To make life easy I have created scripts, all you have to do is copy the files in this 
repo to your project repo, modify the README.md and DESCRIPTON files and use the below 
script.

1. To build the website and puts in folder called docs

        $ ./buildWeb.sh

2. To create a branch and push it

        $ ./updateWeb.sh

To build manually
========

Pull my docker image
```
$ docker pull ragumanjegowda/docker
```

Run the docker image and navigate to project folder (refer scripts/run.sh)
After modifying the relevant files, run the following from command prompt.

```
# To enter R consolde
$ R
# To build website
> pkgdown::build_site()
```

Website pages are generated on docs folder. And firefox browser launches
from the docker image showing the view.

Known issues
============

While running `buildWebsite` script and it throws any error related to source code in the project try deleting all the contents except README and media files. These are the only two things needed to generate `docs` folder.

Pkgdown generates `reference` tab in the homepage (reference they mean here is not references used to
build repo) even though there is nothing in the path it looks for.

In order to fix this `build_site` needs to be tweaked so that `build_home` doesn't build placeholder 
for reference, later call `build_reference` needs to be disabled. 

Currently I have decided not to worry about fix and just live with it.
