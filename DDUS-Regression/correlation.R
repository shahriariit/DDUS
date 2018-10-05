df<- read.csv(file="depression.new.csv", header=TRUE, sep=",")
df<- df[5:29]

p.cor<-cor(df)
corrplot.mixed(p.cor)
 
library(psych)
pairs.panels(df)

cor.mtest <- function(mat, ...) {
  mat <- as.matrix(mat)
  n <- ncol(mat)
  p.mat<- matrix(NA, n, n)
  diag(p.mat) <- 0
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(mat[, i], mat[, j], ...)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
    }
  }
  colnames(p.mat) <- rownames(p.mat) <- colnames(mat)
  p.mat
}

p.mat <- cor.mtest(df)

corrplot::corrplot(p.cor,method = "pie")
corrplot::corrplot(p.cor,method = "color")
corrplot::corrplot(p.cor, type="upper", order="hclust",  p.mat = p.mat, sig.level = 0.01, insig = "blank")
corrplot::corrplot(p.cor, type="upper", order="hclust",  p.mat = p.mat, sig.level = 0.01)

col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot::corrplot(p.cor, method="color", col=col(200), order="hclust", 
         addCoef.col = "black", # Add coefficient of correlation
         tl.col="black", tl.srt=45, #Text label color and rotation
         # Combine with significance
         p.mat = p.mat, sig.level = 0.01, insig = "blank", 
         # hide correlation coefficient on the principal diagonal
         diag=FALSE 
)