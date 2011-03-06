class.kurt.pt <-
function(kurtosis) 
{
 if (kurtosis <= 0.67) {return("Muito platicúrtica")}
 if ((kurtosis > 0.67) & (kurtosis <= 0.9)) {return("Platicúrtica")}
 if ((kurtosis > 0.9) & (kurtosis <= 1.11)) {return("Mesocúrtica")}
 if ((kurtosis > 1.11) & (kurtosis <= 1.5)) {return("Leptocúrtica")}
 if ((kurtosis > 1.5) & (kurtosis <= 3)) {return("Muito leptocúrtica")}
 if (kurtosis > 3) {return("Extremamente leptocúrtica")}
}

