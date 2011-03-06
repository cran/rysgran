class.skew.moment.pt <-
function(skewness.moment) 
{
 if (skewness.moment<=-1.3) {return("Muito negativa")}
 if ((skewness.moment>-1.3) & (skewness.moment<=-0.43)) {return("Negativa")}
 if ((skewness.moment>-0.43) & (skewness.moment<=0.43)) {return("Aproximadamente simétrica")}
 if ((skewness.moment>0.43) & (skewness.moment<=1.3)) {return("Positiva")}
 if (skewness.moment> 1.3) {return("Muito positiva")}
}

