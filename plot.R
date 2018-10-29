game1=read.csv("vgsalesGlobale.csv")
as.numeric(game1)

#game=game1[!is.na(rowSums(game1[,1:11])),]\
na.omit(game1)
#barplot(table(game$Genre))

library(plotly)
plot_ly(x=game1$Year,y=game$Global_Sales,type="scatter",mode="markers")
#plot(aggregate(game1$Global_Sales,list(game1$Year),sum),main="Number of Games Released per Year")
barplot(table(game1$Genre),col=topo.colors(10),main="Distribution of Different Geners")