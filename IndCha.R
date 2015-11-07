#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 
#   Program Name:   LIFP - individual characteristics
#   Version:        1.1
#
#   Created By:     Justin Xu
#   Modified By:    Justin Xu
#
#   Database Used:  Individual Information
#   Source Tables:  \\Inputs\\
#   Target Tables:  \\Outputs\\
#
#   Purpose:            To input individual characteristics
#
#   Version           Date           Author            change
#               |               |               |
#     1.1       |   09/21/15    |    Justin     |      First Version
#
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Input Individual Characteristics
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

IndCha <- read.csv(paste0(root,"Inputs\\IndCha\\IndCha.csv"), header = TRUE)

curAge <- as.numeric(levels(factor(IndCha[1, 2])))

gender <- levels(factor(IndCha[2, 2]))

state <- levels(factor(IndCha[3, 2]))

curInc <- as.numeric(levels(factor(IndCha[4, 2])))

mariaged <- levels(factor(IndCha[5, 2]))

spoInc <- as.numeric(levels(factor(IndCha[6, 2])))

mortBal <- as.numeric(levels(factor(IndCha[7, 2])))

mMortPay <- as.numeric(levels(factor(IndCha[8, 2])))

mRentPay <- as.numeric(levels(factor(IndCha[9, 2])))

debt <- as.numeric(levels(factor(IndCha[10, 2])))

breWin <- levels(factor(IndCha[11, 2]))

retAge <- as.numeric(levels(factor(IndCha[12, 2])))

cSavBal <- as.numeric(levels(factor(IndCha[13, 2])))

emefun <- as.numeric(levels(factor(IndCha[14, 2])))

eeHea <- as.numeric(levels(factor(IndCha[15, 2])))

eeWL <- as.numeric(levels(factor(IndCha[16, 2])))

eeTerm <- as.numeric(levels(factor(IndCha[17, 2])))

eeDis <- as.numeric(levels(factor(IndCha[18, 2])))

eeUni <- as.numeric(levels(factor(IndCha[19, 2])))

ee401k <- as.numeric(levels(factor(IndCha[20, 2])))

eeRet <- as.numeric(levels(factor(IndCha[21, 2])))

erHea <- as.numeric(levels(factor(IndCha[22, 2])))

erWL <- as.numeric(levels(factor(IndCha[23, 2])))

erTerm <- as.numeric(levels(factor(IndCha[24, 2])))

erDis <- as.numeric(levels(factor(IndCha[25, 2])))

eruni <- as.numeric(levels(factor(IndCha[26, 2])))

er401k <- as.numeric(levels(factor(IndCha[27, 2])))

repsi <- as.numeric(levels(factor(IndCha[28, 2])))

for (i in 1 : 20) {
  nam <- paste("depAge", i, sep = ".")
  assign(nam, as.numeric(levels(factor(IndCha[28 + i, 2]))))
}

for (i in 1 : 20) {
  nam <- paste("depgen", i, sep = ".")
  assign(nam, levels(factor(IndCha[48 + i, 2])))
}

actbud <- as.numeric(levels(factor(IndCha[69, 2])))



idealBudget <- 41782
actBudget <- 12042
