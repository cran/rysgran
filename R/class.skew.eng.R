class.skew.eng <-
function(skewness) 
{
 if ((skewness > -1) & (skewness <= -0.3)) {return("Very negative")}
 if ((skewness > -0.3) & (skewness <= -0.1)) {return("Negative")}
 if ((skewness > -0.1) & (skewness <= 0.1)) {return("Approximately symmetrical")}
 if ((skewness > 0.1) & (skewness <= 0.3)) {return("Positive")}
 if ((skewness > 0.3) & (skewness <= 1)) {return("Very positive")}
}

