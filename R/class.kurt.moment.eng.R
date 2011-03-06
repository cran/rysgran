class.kurt.moment.eng <-
function(kurtosis.moment) 
{
 if (kurtosis.moment <= 1.70) {return("Very platykurtic")}
 if ((kurtosis.moment > 1.70) & (kurtosis.moment <= 2.55)) {return("Platykurtic")}
 if ((kurtosis.moment > 2.55) & (kurtosis.moment <= 3.70)) {return("Mesokurtic")}
 if ((kurtosis.moment > 3.70) & (kurtosis.moment <= 7.40)) {return("Leptokurtic")}
 if ((kurtosis.moment > 7.40) & (kurtosis.moment <= 15)) {return("Very leptokurtic")}
 if (kurtosis.moment > 15) {return("Extremely leptokurtic")}
}

