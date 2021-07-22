#create a table
patients <- rbind(c(18, 7), c(6, 13))

#sign rows and columns
colnames(patients) <- c("Yes", "No")
rownames(patients) <- c("Placebo", "Aspirin")

#create a graph
mosaicplot(patients, color=T, shade=T, ylab="Thrombosis", xlab="Group", cex.axis=1, main="")
