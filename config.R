root <- "D:\\OneDrive\\Documents\\MCMC_2\\"
setwd(root)


#setwd(paste0(root,"SourceCode"))

#*********************#
#      Constants      #
#*********************#

# 1. Tax adjustment forward from 2011 to 2014
#    File :  MM lookup table with testing page 0918 v39
#    Sheet: IRS lookups
#    Cell : I10
TaxAdj.1114 <- 1.076891


# 1. Tax adjustment back from 2014 to 2011
#    File :  MM lookup table with testing page 0918 v39
#    Sheet: IRS lookups
#    Cell : I9
TaxAdj.1411 <- 0.928599


# 1. Income adjustment forward from 2011 to 2014
#    File :  MM lookup table with testing page 0918 v39
#    Sheet: IRS lookups
#    Cell : C10
IncomeAdj.1114 <- 1.092727


# 1. Income adjustment back from 2014 to 2011
#    File :  MM lookup table with testing page 0918 v39
#    Sheet: IRS lookups
#    Cell : C10
IncomeAdj.1411 <- 0.915141659


