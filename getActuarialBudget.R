#define constants for Regression Functions of Expense
colNames <- c("intercept", "income", "age")
rowNames <- c("BasicLivingExpense", "HealthCare", "DiscretionaryExpense",
              "InsuranceExpense", "Rent", "Mortage")
coefMatrix <- matrix(c(5313.680,  0.17933, 0,
                       -780.22,   0,       80.2086,
                       1311.35,   0.28817, -120.37,
                       -1960.280, 0.1426,  -73.36,
                       6748.81,   0,       -82.01,
                       -2658.51,  0.12,    0),
                     ncol = 3, byrow = TRUE,
                     dimnames = list(rowNames, colNames))
