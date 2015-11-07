source("sourceCode//IndCha.R")
source("sourceCode//Functions.R")
source("sourceCode//CashFlowFunctions.R")
MCMatrix <-  getLifePath(curAge,gender)
MCMatrix <- MCMatrix[1:(retAge - curAge + 1), ]

# financial allocation
finAllocation <- c("TL" = 0.10, 
                   "WL" = 0.20, 
                   "Dis" = 0.30, 
                   "Ret" = 0.40)

CFMat.termPrem <- getTermInsCF(MCMatrix = MCMatrix, curAge = curAge, retAge = retAge, benefit = actBudget * finAllocation[["TL"]])

