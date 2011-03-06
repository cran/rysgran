class.sort.pt <-
function(sort) 
{
 if (sort <= 0.35) {return("Muito bem selecionado")}
 if ((sort > 0.35) & (sort <= 0.5)) {return("Bem selecionado")}
 if ((sort > 0.5) & (sort<=1)) {return("Moderadamente selecionado")}
 if ((sort > 1) & (sort<=2)) {return("Pobremente selecionado")}
 if ((sort > 2) & (sort<=4)) {return("Muito pobremente selecionado")}
 if (sort > 4) {return("Extremamente mal selecionado")}
}

