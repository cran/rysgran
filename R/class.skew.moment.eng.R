class.skew.moment.eng <-
function(skewness.moment)
{
 if (skewness.moment<=-1.3) {return("Very negative")}
 if ((skewness.moment>-1.3) & (skewness.moment<=-0.43)) {return("Negative")}
 if ((skewness.moment>-0.43) & (skewness.moment<=0.43)) {return("Approximately symmetrical")}
 if ((skewness.moment>0.43) & (skewness.moment<=1.3)) {return("Positive")}
 if (skewness.moment> 1.3) {return("Very positive")}
}

