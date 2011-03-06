class.mean.pt <-
function(mean)
{
 if (mean <= -8) {return("Matacao")}
 if ((mean > -8) & (mean <= -6)) {return("Calhau")}
 if ((mean > -6) & (mean <= -2)) {return("Seixo")}
 if ((mean > -2) & (mean <= -1)) {return("Grânulo")}
 if ((mean > -1) & (mean <= 0)) {return("Areia muito grossa")}
 if ((mean > 0) & (mean <= 1)) {return("Areia grossa")}
 if ((mean > 1) & (mean <= 2)) {return("Areia média")}
 if ((mean > 2) & (mean <= 3)) {return("Areia fina")}
 if ((mean > 3) & (mean <= 4)) {return("Areia muito fina")}
 if ((mean > 4) & (mean <= 5)) {return("Silte grosso")}
 if ((mean > 5) & (mean <= 6)) {return("Silte médio")}
 if ((mean > 6) & (mean <= 7)) {return("Silte fino")}
 if ((mean > 7) & (mean <= 8)) {return("Silte muito fino")}
 if ((mean > 8) & (mean <= 9)) {return("Argila grossa")}
 if (mean > 9) {return("Argila média")}
}

