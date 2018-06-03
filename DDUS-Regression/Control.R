library(caret)

# prepare training scheme
control <- trainControl(method="repeatedcv", number=10, repeats=10)