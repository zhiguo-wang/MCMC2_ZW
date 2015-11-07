# Functions that generates cash flows
# Author: Zhiguo Wang
# Date  : 10/16/2015
# version: 1.0

getTermInsCF <- function(MCMatrix, curAge, retAge, benefit){
    
    #read in term life insurance rate
    TLRate.table <- read.csv(file = paste0(root, "Inputs\\IntermediateData\\Term Life.csv"), header = TRUE)
    TLRate.table <- TLRate.table[(curAge+1) : (retAge+1), ] 
    
    # calculate term life premiums
    TLPrem <- benefit / TLRate.table[ , 1 * (gender == "F") + 2]
    
    CFTerm <- -(TLPrem * (MCMatrix == 1)) 
    
    x <- 1 * (MCMatrix == 3)
    x1 <- rbind(rep(0, length = 1000), x)
    x1 <- x1[1:(nrow(x1)-1), ]
    x <- x - x1
    
    x <- benefit * x
    
    return(CFTerm + x)
}