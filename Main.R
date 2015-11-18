


source(paste0(root, sourceCode, "IndCha.R"))
source(paste0(root, sourceCode, "Functions.R"))
source(paste0(root, sourceCode, "Cashflowfunctions.R"))
MCMatrix <-  getLifePath(currentAge,gender)
preYears <- retireAge - currentAge
pre_mcmc <- MCMatrix[1 : preYears, ]
post_mcmc <- MCMatrix[( preYears + 1 ) : nrow(MCMatrix),]
rm(MCMatrix)

# financial allocation
finAllocation <- c("TL" = 0.10, 
                   "WL" = 0.20, 
                   "Dis" = 0.30, 
                   "Ret" = 0.40)

CFMat.termPrem <- getTermInsCF(MCMatrix = MCMatrix, curAge = curAge, retAge = retAge, benefit = actBudget * finAllocation[["TL"]])

