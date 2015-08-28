#install_core.sh installs packages and gets the code
#and data required for the reference environment.  Configuration
#usually happens later in configure_core.sh unless something 
#depends on it here.

log=/vagrant/temp/install.log
echo Started install_core.sh | tee -a $log

echo Installing packages | tee -a $log
sudo apt-get -y update 
sudo apt-get -y install unzip libxt6 libxtst6
echo Completed package installation | tee -a $log

echo Getting MATLAB Runtime install files | tee -a $log
wget --progress=dot:giga -O MCR_R2015a_glnxa64_installer.zip "http://au.mathworks.com/supportfiles/downloads/R2015a/deployment_files/R2015a/installers/glnxa64/MCR_R2015a_glnxa64_installer.zip"

echo Getting the Feizi et al uncompiled code from Nature Biotechnology | tee -a $log 
mkdir feizi_et_al_2013;cd feizi_et_al_2013
wget --progress=dot:giga -O nbt.2635-S2.zip "http://www.nature.com/nbt/journal/v31/n8/extref/nbt.2635-S2.zip"

echo Unzipping the uncompiled code | tee -a $log
unzip -q nbt.2635-S2.zip && tar -zxf ND-code-datasets.tar.gz && mv ND-code-datasets code && rm ND-code-datasets.tar.gz && rm nbt.2635-S2.zip 

echo Copying the Feizi et al compiled code from the data directory| tee -a $log
cd ..;cp -R /vagrant/temp/data/feizi_et_al_2013/* -t feizi_et_al_2013/

printf 'MCR R2015a' >> /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt

echo Completed install_core.sh | tee -a $log