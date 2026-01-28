#######
#Autheur : Mackey CHARLES
#Exercices de R
#######

#Exercice 1

rm(list = ls())
prix <- 100
quantite <- 5
total <- prix*quantite
taxe <- 0.15*total
prix_final <- total+taxe

#Exercice 2
rm(list = ls())

temperature <- c(22,24,19,25,23,26,21)
temperature_moyenne <-mean(temperature)
temperature_minimal <-min(temperature)
temperature_maximal <- max(temperature)
temperature_23 <- temperature[temperature>23]
fahrenheit<-function(temp_c){
  return(temp_c*9/5+32)
}
temperature<-fahrenheit(temperature)
names(temperature)<-c('lundi','mardi','mercredi','jeudi','vendredi','samedi','dimanche')


# Exercice 3
rm(list = ls())

etudiants <- data.frame(Nom=c('Alice','Bob','Charlie','Diana'),Notes_Maths=c(85,90,78,95),Note_Info=c(88,85,92,90),Present=c(TRUE,TRUE,FALSE,TRUE))
etudiants$Nom[which.max(etudiants$Notes_Maths+etudiants$Note_Info)]
etudiants[etudiants$Present == TRUE,]
moyenne_math <- mean(etudiants$Notes_Maths)
determiner_mention<-function(moyenne)
{
ifelse(moyenne>=90,'Excellent',ifelse(moyenne>=80,'Bien','Passable'))
}
etudiants$Mention<-determiner_mention(etudiants$Notes_Maths)
etudiants
