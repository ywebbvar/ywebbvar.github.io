setwd('C:/Users/ATB/Desktop')
local({pkg <- select.list(sort(.packages(all.available = TRUE)),graphics=TRUE)
+ if(nchar(pkg)) library(pkg, character.only=TRUE)})
enejul<-read.csv('enejul.csv',header=T)
enejul
vis<-gvisMotionChart(enejul,idvar='DESCRIPCION',timevar='Año')
mystate<-'
+ {"yZoomedIn":false,"uniColorForNonSelected":false,"playDuration":15000,"orderedByY":false,"yZoomedDataMax":32,"sizeOption":"_UNISIZE","xAxisOption":"_ALPHABETICAL","colorOption":"_UNIQUE_COLOR","xZoomedDataMin":0,"duration":{"timeUnit":"Y","multiplier":1},"iconType":"VBAR","dimensions":{"iconDimensions":["dim0"]},"time":"2009","xLambda":1,"nonSelectedAlpha":0.4,"iconKeySettings":[{"key":{"dim0":"CAMARON"}}],"yLambda":1,"xZoomedDataMax":11,"xZoomedIn":false,"showTrails":false,"orderedByX":true,"yZoomedDataMin":0,"yAxisOption":"2"}
+'
vis<-gvisMotionChart(enejul,idvar='DESCRIPCION',timevar='Año',options=list(state=mystate))
plot(vis)