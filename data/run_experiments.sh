#!/bin/sh

# Set up logfile
log=/home/sbl/run_experiments.log

echo;echo;echo
echo "### Overview
This is the reference environment for the manuscript ['Network deconvolution as a general method to distinguish direct dependencies in networks'](https://dx.doi.org/10.1038/nbt.2635).  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](https://compbio.mit.edu/nd/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/).

### Instructions for use

This shell script reproduces results described in the manuscript and writes 
output to (location).

### Other links

[Manuscript link](https://dx.doi.org/10.1038/nbt.2635)

[Project page link](https://compbio.mit.edu/nd/)

[Docker container](https://hub.docker.com/r/uomsystemsbiology/feizi2013network/)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/feizi2013network_reference_environment)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.29668)"
echo

echo Completed analysis | tee -a $log
echo;echo
$SHELL