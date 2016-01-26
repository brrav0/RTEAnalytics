# list of packages required to run RTEAnalytics.Rmd

get_libraries <- function(filenames_list) { 
  lapply(filenames_list,function(thelibrary){    
    if (do.call(require,list(thelibrary)) == FALSE) 
      do.call(install.packages,list(thelibrary)) 
    do.call(library,list(thelibrary))
  })
}

libraries_used=c("stringr","gtools","foreign","reshape2","digest","timeDate","devtools","knitr","graphics",
                 "grDevices","xtable","sqldf","stargazer","TTR","quantmod","shiny",
                 "Hmisc","vegan","fpc","GPArotation","FactoMineR","cluster",
                 "psych","stringr","googleVis", "png","ggplot2","googleVis", "gridExtra","RcppArmadillo","xts","DescTools")

get_libraries(libraries_used)

options(stringsAsFactors=FALSE)