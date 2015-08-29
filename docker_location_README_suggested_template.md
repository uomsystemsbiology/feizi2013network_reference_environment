### Overview

This is the reference environment for the manuscript ['Network deconvolution as a general method to distinguish direct dependencies in networks'](https://dx.doi.org/10.1038/nbt.2635).  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](https://compbio.mit.edu/nd/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/).  

### Instructions for use

This version of the reference environment is a Docker container.  To use it, install [Docker](https://www.docker.com/), then do:

```
$ docker pull uomsystemsbiology/feizi2013network
$ docker run uomsystemsbiology/feizi2013network /sbin/my_init -- ./run_plot_ND_performance_regulatory.sh
$ docker run uomsystemsbiology/feizi2013network /sbin/my_init -- ./run_plot_ND_performance_protein.sh
$ docker run uomsystemsbiology/feizi2013network /sbin/my_init -- ./run_plot_ND_performance_coauthorship.sh
```

This will execute MATLAB scripts to reproduce the results described in the manuscript, and the output will be written to /home/sbl/feizi_et_al/code.

Note that the scripts in this environment generate MATLAB plots which will not be displayed when accessing the environment as a Docker container, and the scripts above will not terminate after they have completed.  To terminate the scripts, press Ctrl-C.  Details on the scripts are provided by the authors in /home/sbl/feizi_et_al/code. 

To see the generated MATLAB plots, use the virtual machine or ISO versions of the environment described below. 

### Other links

[Manuscript link](https://dx.doi.org/10.1038/nbt.2635)

[Project page link](https://compbio.mit.edu/nd/)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.29668)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/feizi2013network_reference_environment)
