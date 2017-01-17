setwd("D:/Jerry/CSIE訓練班/R/20170117/r_prg_midterm_02") 
myPlanet = read.csv("planet_data.csv")
#Scattered Diagram
plot(myPlanet$Sun.AvgDist.AU.,myPlanet$Planet.Diameter.KM.,main="Avg distance from Sun vs. Planet diameter", xlab = "Avg Dist from Sun(AU)", ylab = "Dia(Km)")

#line graph
plot(myPlanet$Sun.AvgDist.AU.,myPlanet$Planet.Diameter.KM., type="l",main="Avg distance from Sun vs. Planet diameter", xlab = "Avg Dist from Sun(AU)", ylab = "Dia(Km)")

#Histogram
par(mfrow = c(1,2))
hist(airquality$Temp, main = "Distribution of tempture (May~Sep)", xlab = "Tempture")
hist(airquality$Ozone, main = "Distribution of Ozone (May~Sep)", xlab = "Ozone")

#Box plot
par(mfrow = c(1,2))
boxplot(airquality$Wind ~ airquality$Month, main = "Wind by Month")
boxplot(airquality$Solar.R ~ airquality$Month, main = "Solar.R by Month")

#Bar plot
barplot(myPlanet$Planet.Gravity, names.arg = myPlanet$Planet.Name, main = "Gravity of each Planet", xlab = "Gravity", ylab = "Planet", horiz = TRUE)

