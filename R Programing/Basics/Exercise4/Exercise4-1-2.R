#1
subset(df, subset = df$volunteer == TRUE)

#2
subset(df, subset = df$volunteer == FALSE & df$ sex == "male")

#3
round(((nrow(subset(df, subset = df$sex == "female" & df$volunteer == TRUE)))/(nrow(subset(df, subset = df$sex == "female"))))*100,0) #45%

#4
unsuitedPeople <- subset(df, subset = df$neuroticism>12 | df$extraversion < 10 | df$factorDiff > 15)
unsuitedPeople

#5
round(nrow(subset(unsuitedPeople,subset= unsuitedPeople$volunteer == TRUE))/nrow(unsuitedPeople),4) #0.4086

#6
suitedPeople <- df[!df$X %in% unsuitedPeople$X,]
mean(subset(suitedPeople,subset = suitedPeople$volunteer==FALSE)$factorDiff) #5.636872

