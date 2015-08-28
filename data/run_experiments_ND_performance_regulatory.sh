#!/bin/sh

# Set up logfile
log=/home/sbl/feizi_et_al_2013/run_experiments.log

echo;echo;echo
echo "### Overview
This shell script is part of the reference environment for the manuscript ['Network deconvolution as a general method to distinguish direct dependencies in networks'](https://dx.doi.org/10.1038/nbt.2635).  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](https://compbio.mit.edu/nd/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/).  

### Instructions for use

This shell script reproduces results described in the manuscript, writes 
output to /home/sbl/feizi_et_al_2013/code/Application1-gene-regulatory-network,and plots ND performance from the DREAM5 Challenge 4 evaluation.  For more information, see the author instructions at /home/sbl/feizi_et_al_2013/code/Application1-gene-regulatory-network/read-me.txt

### Other links

[Manuscript link](https://dx.doi.org/10.1038/nbt.2635)

[Project page link](https://compbio.mit.edu/nd/)

[Docker container](https://hub.docker.com/r/uomsystemsbiology/feizi2013network/)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/feizi2013network_reference_environment)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.29668)"
echo

echo Copying the Feizi et al compiled code into the project directory | tee -a $log
cp -R /home/sbl/feizi_et_al_2013/compiled/Application1-gene-regulatory-network/* -t /home/sbl/feizi_et_al_2013/code/Application1-gene-regulatory-network
sudo chmod 777 /home/sbl/feizi_et_al_2013/code/Application1-gene-regulatory-network/run_plot_ND_performance_regulatory.sh
sudo chmod 777 /home/sbl/feizi_et_al_2013/code/Application1-gene-regulatory-network/plot_ND_performance_regulatory

echo Executing plot_ND_performance_regulatory | tee -a $log
cd /home/sbl/feizi_et_al_2013/code/Application1-gene-regulatory-network
./run_plot_ND_performance_regulatory.sh /usr/local/MATLAB/MATLAB_Runtime/v85

echo Completed analysis | tee -a $log
$SHELL
