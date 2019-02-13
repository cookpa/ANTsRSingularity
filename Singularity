Bootstrap: docker
From: ubuntu:16.04

%help
Container to build ANTsRNet

%labels

    Maintainer Philip Cook
    Version 1

%setup

    # Stuff to do on the host system 
    mkdir ${SINGULARITY_ROOTFS}/opt/installFiles

%files

    # Got this from http://keyserver.ubuntu.com , key ID 0x51716619e084dab9
    key.txt /opt/installFiles
    installANTsR.R /opt/installFiles

%post

    # R uses https, so need to install that first
    apt-get update
    apt-get install -y apt-transport-https

    # General build stuff
    apt-get install -y build-essential 
    apt-get install -y curl 
    apt-get install -y git
    apt-get install -y python

    # Other stuff needed for devtools
    apt-get install -y libcurl4-gnutls-dev 
    apt-get install -y libgit2-dev
    apt-get install -y libapparmor-dev
    apt-get install -y libssl-dev 
    apt-get install -y libcurl4-openssl-dev 
    apt-get install -y libxml2-dev    
    apt-get install -y libv8-3.14-dev

    # Install R, packages, ANTsR

    echo "
# For R installation
deb https://cloud.r-project.org/bin/linux/ubuntu xenial/
" >> /etc/apt/sources.list

    apt-key add /opt/installFiles/key.txt

    # Install R
    apt-get update
    apt-get install -y r-base

    Rscript /opt/installFiles/installANTsR.R

%runscript
    R -e 'library(ANTsR); sessionInfo()' 
