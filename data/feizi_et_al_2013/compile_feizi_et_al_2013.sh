#!/bin/sh
mkdir feizi_et_al_2013;cd feizi_et_al_2013

mkdir compiled
mkdir compiled/Application1-gene-regulatory-network;\
mkdir compiled/Application2-protein-contact-maps;\
mkdir compiled/Application3-coauthorship-network

wget --progress=dot:giga -O nbt.2635-S2.zip "http://www.nature.com/nbt/journal/v31/n8/extref/nbt.2635-S2.zip"

unzip -q nbt.2635-S2.zip && tar -zxf ND-code-datasets.tar.gz && mv ND-code-datasets code && rm ND-code-datasets.tar.gz && rm nbt.2635-S2.zip 

mcc -v -m -I code/Application1-gene-regulatory-network/ -d compiled/Application1-gene-regulatory-network/ plot_ND_performance_regulatory.m

mcc -v -m -I code/Application2-protein-contact-maps/ -d compiled/Application2-protein-contact-maps/ plot_ND_performance_protein.m

mcc -v -m -I code/Application3-coauthorship-network/ -d compiled/Application3-coauthorship-network/ plot_ND_performance_coauthorship.m
