class.mean.eng <-
function(mean) 
{
 if (mean <= -8) {return("Boulder")}
 if ((mean > -8) & (mean <= -6)) {return("Cobble")}
 if ((mean > -6) & (mean <= -2)) {return("Pebble")}
 if ((mean > -2) & (mean <= -1)) {return("Granules")}
 if ((mean > -1) & (mean <= 0)) {return("Very coarse sand")}
 if ((mean > 0) & (mean <= 1)) {return("Coarse sand")}
 if ((mean > 1) & (mean <= 2)) {return("Medium sand")}
 if ((mean > 2) & (mean <= 3)) {return("Fine sand")}
 if ((mean > 3) & (mean <= 4)) {return("Very fine sand")}
 if ((mean > 4) & (mean <= 5)) {return("Coarse silt")}
 if ((mean > 5) & (mean <= 6)) {return("Medium silt")}
 if ((mean > 6) & (mean <= 7)) {return("Fine silt")}
 if ((mean > 7) & (mean <= 8)) {return("Very fine silt")}
 if ((mean > 8) & (mean <= 9)) {return("Coarse clay")}
 if (mean > 9) {return("Medium clay")}
}

