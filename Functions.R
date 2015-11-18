#Author: Zhiguo Wang
#Date: 10/14/2015
#Version: 1.0

#**************************************#
# Simulate Excel "vLookup" function, approximate match;
# Parameters: 
#   lookup_value: The value you want to look up
#   table_array : The dataset in which the vLookup will search for the lookup_value and the return value
#   col_index   : The column number that contains the return value.
# Return        : The value in col_index and in the same row as lookup_value; 

vLookup <- function(lookup_value, table_array, col_index){
    rowIndex <- which.min(table_array[, 1] - lookup_value)
    return(table_array(rowIndex, col_index)) 
}

# Get stochastic path #
getLifePath <- function(CurAge, Gender){
    load(paste0(root, workspaces, "Unif_MCMC.RData"))
    return(get(paste0("umcmc_",Gender, "_", CurAge)))
}