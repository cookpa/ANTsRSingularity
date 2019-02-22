# ANTsRSingularity
ANTsR Singularity build for Ubuntu 16.04 Xenial

By default this builds the current ANTsR master. See installANTsR.R 
for instructions to change that.

If you need to find the ANTsR version later, it will be in 

  /usr/local/lib/R/site-library/ANTsR/DESCRIPTION


## Multi-threading

To avoid problems across unix environments, it's common to run
containers with the `--cleanenv` option. To send environment 
variables to the container at run time, prefix them with 
`SINGULARITYENV_`.

To control ITK multi-threading:

```
  export SINGULARITYENV_ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1
  singularity exec --cleanenv antsR.singl R
```
