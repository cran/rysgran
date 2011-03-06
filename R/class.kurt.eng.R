class.kurt.eng <-
function(kurtosis) 
{
 if (kurtosis <= 0.67) {return("Very platykurtic")}
 if ((kurtosis > 0.67) & (kurtosis <= 0.9)) {return("Platykurtic")}
 if ((kurtosis > 0.9) & (kurtosis <= 1.11)) {return("Mesokurtic")}
 if ((kurtosis > 1.11) & (kurtosis <= 1.5)) {return("Leptokurtic")}
 if ((kurtosis > 1.5) & (kurtosis <= 3)) {return("Very leptokurtic")}
 if (kurtosis > 3) {return("Extremely leptokurtic")}
}

