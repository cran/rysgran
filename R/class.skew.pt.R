class.skew.pt <-
function(skewness) 
{
 if ((skewness > -1) & (skewness <= -0.3)) {return("Muito negativa")}
 if ((skewness > -0.3) & (skewness <= -0.1)) {return("Negativa")}
 if ((skewness > -0.1) & (skewness <= 0.1)) {return("Aproximadamente simétrica")}
 if ((skewness > 0.1) & (skewness <= 0.3)) {return("Positiva")}
 if ((skewness > 0.3) & (skewness <= 1)) {return("Muito positiva")}
}

