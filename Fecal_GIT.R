bighorn <- read.csv("~/Dropbox/Bighorn Sheep Data/Data for R class/Fecal.csv")

head(bighorn)

library(ggplot2)

str(bighorn)

## want to look at just the wild bighorn fecal samples so subsetting for fecal and wild
fecal_wild_bighorn <- droplevels(subset(bighorn, bighorn$biomass=="fecal" & bighorn$status=="wild" ))

View(fecal_wild_bighorn)  ##not letting me view for some reason

t.test(fecal_wild_bighorn$P~fecal_wild_bighorn$SEASON)  ##t-test of Phosporus between pre and post season

mean(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "Post"])  ##mean post

mean(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "pre"])  ## mean pre

sd(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "Post"])  ## st. dev post

sd(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "pre"])  ## st. dev pre

sd(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "Post"])/   ##SE post
  sqrt(length(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "Post"]))

### try to write a function so can do all minerals quickly

fecal_ttest <- function(mineral = x)  {
  mean_pre  <- mean(fecal_wild_bighorn$"x"[fecal_wild_bighorn$SEASON == "pre"])
  return(mean_pre)
  
}

fecal_ttest(mine"K")

sd(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "pre"])/   ## SE pre
  sqrt(length(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "pre"]))

boxplot(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "Post"],
        (fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "pre"]))

### how to make bar plots with SE bars???
barplot(mean(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "Post"]),
        mean(fecal_wild_bighorn$P[fecal_wild_bighorn$SEASON == "pre"]))


https://github.com/travisjguy/Bighorn-Sheep-Fecal-Project.git
