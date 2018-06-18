res <- cor(original_data)
round(res, 2)

library(corrplot)
corrplot(res, method = "circle")