class.kurt.moment.pt <-
function(kurtosis.moment)
{
 if (kurtosis.moment <= 1.70) {return("Muito platicúrtica")}
 if ((kurtosis.moment > 1.70) & (kurtosis.moment <= 2.55)) {return("Platicúrtica")}
 if ((kurtosis.moment > 2.55) & (kurtosis.moment <= 3.70)) {return("Mesocúrtica")}
 if ((kurtosis.moment > 3.70) & (kurtosis.moment <= 7.40)) {return("Leptocúrtica")}
 if ((kurtosis.moment > 7.40) & (kurtosis.moment <= 15)) {return("Muito leptocúrtica")}
 if (kurtosis.moment > 15) {return("Extremamente leptocúrtica")}
}

