#Calculating idea budget#
#Author: Zhiguo Wang
#Date: 10/10/2015
#Version: 1.0

# calculate social security benifit
getSSB <- function(annualIncome, retireAge){
    SSBase.2014 <- 117000
    perct <- c(0.9, 0.32, 0.15)
    
    # Monthly Income
    mInc <- min(SSBase.2014, annualIncome)/12
    bend <- c(816,4917)
    
    tier <- c(min(bend[1], mInc), 
              max(0, min(mInc,bend[2] - bend[1])),
              max(0, mInc - bend[2]))
    # monthly Social Security Primary Insurance Amount (PIA)
    PIA.unadjusted <- sum(tier * perct)
    
    adjFactor <- 0
    if (retireAge < 67) {
        adjFactor <- min(3, 67-retireAge) * (12 * 5 / 900) +
                    max(0, 67-retireAge - 3) * (12 * 5 / 1200)
    } else if (retAge >= 67) {
        adjFactor <- max(3, retireAge - 67) * (12 * 16 / 2400)
    }
    
    
    # Adjusted for early or late start
    return(PIA.unadjusted * (1 - adjFactor) * 12 * (1 + wageInflation) ^ (retireAge - currentAge))
#    rm(SSBase.2014, perct, mInc, bend, tier, PIA.unadjusted, adjFactor)
}


getRetirementNeeds <- function(){
    wageAtRetirement <- curInc * 1.03^(retAge - curAge)
    idealARA <- wageAtRetirement * 0.75                #ideal annual retirement needs
    #read in tpx according to gender
    if(gender=="M"){
        tpx.table <- read.csv("Inputs\\IntermediateData\\maleSurvivingProbability.csv", header = TRUE)
    } else {
        tpx.table <- read.csv("Inputs\\IntermidiateData\\femaleSurvivingProbability.csv", header = TRUE)
    }
    
    # Actuarial Present value at retirement #
    tpx <- tpx.table[,retAge-58]                
    projectedIncomeCF <- (0.95*1.03)^(0:56)    # present value of projected income
    
    # actuarial present value factor
    s <- sum(tpx * projectedIncomeCF) 
    
    # Actuarial Present value of projected Income at retirement
    APV.RetNeeds <- idealARA * sum(tpx * projectedIncomeCF) 
    
    ssb <- getSSB()
    adjSSB <- ssb * s
    
    adjAPV.RetNeeds <- APV.RetNeeds - adjSSB
    
    
}

getDisabilityCost <- function(){
    
}

getWLCost <- function(){
    
}

getTermCost <- function(){
    
}

getHealthCareCost <- function(){
    
}


