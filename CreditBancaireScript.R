#Importation des données 
CBI<-read.csv("CreditBancaire.csv")

#Calcul de la moyenne du credit
mean(CBI$Credit)

#Calcul de la moyenne du nbre de jr de retard par type credit
library(dplyr)
CBI%>%
  group_by(Type)%>%
  summarise(mean(Jours))

#Graphe en Baton
Typecr<-c("Commerce","Consommation","Production")
ValTypecr<-c(80.8,66.3,95.9)
mdnjrptc<- data.frame(Typecr,ValTypecr)
mdnjrptc
library(ggplot2)
ggplot(mdnjrptc,aes(Typecr,ValTypecr))+geom_col(just = 0.5,col="blue")


