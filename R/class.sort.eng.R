class.sort.eng <-
function(sort)
{
 if (sort <= 0.35) {return("Very well sorted")}
 if ((sort > 0.35) & (sort <= 0.5)) {return("Well sorted")}
 if ((sort > 0.5) & (sort <= 1)) {return("Moderately sorted")}
 if ((sort > 1) & (sort <= 2)) {return("Poorly sorted")}
 if ((sort > 2) & (sort <= 4)) {return("Very poorly sorted")}
 if (sort > 4) {return("Extremely poorly sorted")}
}

