install.packages("devtools", repos = "https://cloud.r-project.org", dependencies = T)

library(devtools)

install_github("stnava/cmaker")

# To install a specific version, use @tag, eg stnava/ANTsR@v0.4.6
install_github("stnava/ANTsR")
