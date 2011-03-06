rysgran.plot <-
function (x=NULL , y=NULL , data=NULL , lang="en-US",
main = NULL, xlab = NULL, ylab = NULL, show.labels = FALSE, 
label.points = FALSE, pch = 1, col.labels = "black",
labels = NULL, col = "black", cex.labels = 1, cex.points = 1,
pos=1, z.cex.range=NULL, z=NULL,...)

{
 tab <- as.data.frame (data)
 a<-0
 b<-0

 if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
 {
  title<-as.character(c("Bivariate Plot"))
  if (x=="mean" | x=="Mean" | x=="Média" | x=="Media" | x=="média" | x=="media")
  {
   if (!is.null(tab$Mean)) {a<-as.matrix(tab$Mean);colnames(a)<-c("Mean")}
   else {a<-as.matrix(tab$Media);colnames(a)<-c("Mean")}
  }

  if (x=="Sorting" | x=="sorting" | x=="sort" | x=="Sort" | x=="Seleção" | x=="Seleçao" | x=="Selecao" | x=="seleção" | x=="seleçao" | x=="selecao" | x=="Sele" | x=="sele")
  {
   if (!is.null(tab$Sorting)) {a<-as.matrix(tab$Sorting);colnames(a)<-c("Sorting")} 
   else {a<-as.matrix(tab$Selecao);colnames(a)<-c("Sorting")} 
  }

  if (x=="Skewness" | x=="skewness" | x=="Skew" | x=="skew" | x=="Assimetria" | x=="assimetria" | x=="Ass" | x=="ass")
  {
   if (!is.null(tab$Skewness)) {a<-as.matrix(tab$Skewness);colnames(a)<-c("Skewness")} 
   else {a<-as.matrix(tab$Assimetria);colnames(a)<-c("Skewness")} 
  }

  if (x=="Kurtosis" | x=="kurtosis" | x=="Kurt" | x=="kurt" | x=="Curtose" | x=="curtose" | x=="Curt" | x=="curt")
  {
   if (!is.null(tab$Kurtosis)) {a<-as.matrix(tab$Kurtosis);colnames(a)<-c("Kurtosis")} 
   else {a<-as.matrix(tab$Curtose);colnames(a)<-c("Kurtosis")}
  }

  if (y=="Mean" | y=="mean" | y=="Média" | y=="Media" | y=="média" | y=="media")
  {
   if (!is.null(tab$Mean)) {b<-as.matrix(tab$Mean);colnames(b)<-c("Mean")} 
   else {b<-as.matrix(tab$Media);colnames(b)<-c("Mean")} 
  }

  if (y=="Sorting" | y=="sorting" | y=="Sort" | y=="sort" | y=="Seleção" | y=="Seleçao" | y=="Selecao" | y=="seleção" | y=="seleçao" | y=="selecao" | y=="Sele" | y=="sele")
  {
   if (!is.null(tab$Sorting)) {b<-as.matrix(tab$Sorting);colnames(b)<-c("Sorting")} 
   else {b<-as.matrix(tab$Selecao);colnames(b)<-c("Sorting")} 
  }

  if (y=="Skewness" | y=="skewness" | y=="Skew" | y=="skew" | y=="Assimetria" | y=="assimetria" | y=="Ass" | y=="ass")
  {
   if (!is.null(tab$Skewness)) {b<-as.matrix(tab$Skewness);colnames(b)<-c("Skewness")} 
   else {b<-as.matrix(tab$Assimetria);colnames(b)<-c("Skewness")} 
  }

  if (y=="Kurtosis" | y=="kurtosis" | y=="Kurt" | y=="kurt" | y=="Curtose" | y=="curtose" | y=="Curt" | y=="curt")
  {
   if (!is.null(tab$Kurtosis)) {b<-as.matrix(tab$Kurtosis);colnames(b)<-c("Kurtosis")} 
   else {b<-as.matrix(tab$Curtose);colnames(b)<-c("Kurtosis")} 
  }
 }

 if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
 {
  title<-as.character(c("Gráfico Bivariado"))
  if (x=="mean" | x=="Mean" | x=="Média" | x=="Media" | x=="média" | x=="media")
  {
   if (!is.null(tab$Mean)) {a<-as.matrix(tab$Mean);colnames(a)<-c("Média")} 
   else {a<-as.matrix(tab$Media);colnames(a)<-c("Média")} 
  }

  if (x=="Sorting" | x=="sorting" | x=="sort" | x=="Sort" | x=="Seleção" | x=="Seleçao" | x=="Selecao" | x=="seleção" | x=="seleçao" | x=="selecao" | x=="Sele" | x=="sele")
  {
   if (!is.null(tab$Sorting)) {a<-as.matrix(tab$Sorting);colnames(a)<-c("Seleção")} 
   else {a<-as.matrix(tab$Selecao);colnames(a)<-c("Seleção")} 
  }

  if (x=="Skewness" | x=="skewness" | x=="Skew" | x=="skew" | x=="Assimetria" | x=="assimetria" | x=="Ass" | x=="ass")
  {
   if (!is.null(tab$Skewness)) {a<-as.matrix(tab$Skewness);colnames(a)<-c("Assimetria")} 
   else {a<-as.matrix(tab$Assimetria);colnames(a)<-c("Assimetria")} 
  }

  if (x=="Kurtosis" | x=="kurtosis" | x=="Kurt" | x=="kurt" | x=="Curtose" | x=="curtose" | x=="Curt" | x=="curt")
  {
   if (!is.null(tab$Kurtosis)) {a<-as.matrix(tab$Kurtosis);colnames(a)<-c("Curtose")} 
   else {a<-as.matrix(tab$Curtose);colnames(a)<-c("Curtose")}
  }

  if (y=="Mean" | y=="mean" | y=="Média" | y=="Media" | y=="média" | y=="media")
  {
   if (!is.null(tab$Mean)) {b<-as.matrix(tab$Mean);colnames(b)<-c("Média")} 
   else {b<-as.matrix(tab$Media);colnames(b)<-c("Média")}
  }

  if (y=="Sorting" | y=="sorting" | y=="Sort" | y=="sort" | y=="Seleção" | y=="Seleçao" | y=="Selecao" | y=="seleção" | y=="seleçao" | y=="selecao" | y=="Sele" | y=="sele")
  {
   if (!is.null(tab$Sorting)) {b<-as.matrix(tab$Sorting);colnames(b)<-c("Seleção")} 
   else {b<-as.matrix(tab$Selecao);colnames(b)<-c("Seleção")} 
  }

  if (y=="Skewness" | y=="skewness" | y=="Skew" | y=="skew" | y=="Assimetria" | y=="assimetria" | y=="Ass" | y=="ass")
  {
   if (!is.null(tab$Skewness)) {b<-as.matrix(tab$Skewness);colnames(b)<-c("Assimetria")} 
   else {b<-as.matrix(tab$Assimetria);colnames(b)<-c("Assimetria")} 
  }

  if (y=="Kurtosis" | y=="kurtosis" | y=="Kurt" | y=="kurt" | y=="Curtose" | y=="curtose" | y=="Curt" | y=="curt")
  {
   if (!is.null(tab$Kurtosis)) {b<-as.matrix(tab$Kurtosis);colnames(b)<-c("Curtose")} 
   else {b<-as.matrix(tab$Curtose);colnames(b)<-c("Curtose")} 
  }
 }

 c<-a-b 
 if (sum(c)==0) stop ("x and y cannot be equal")
 if (sum(a)==0) stop ("x must be a valid argument")
 if (sum(b)==0) stop ("y must be a valid argument")

 if (is.null(xlab)) xlab <- colnames(a)
 if (is.null(ylab)) ylab <- colnames(b)
 if (is.null(main)) main <- title
 if (label.points | show.labels)
 {
  if (is.null(labels)) labels<-row.names(tab) 
 }

 par(xpd=FALSE)

 if (show.labels)
 {
  label.points=FALSE
  z=NULL
  plot(b~a, xlab = xlab, ylab = ylab,main=main, type="n", pch = NA,...)
  text(a,b, labels=labels, col=col.labels, cex = cex.labels, pos=NULL)
 }

 if (label.points & is.null(z))
 {
  plot(b~a, xlab = xlab, ylab = ylab,main=main, type="p", pch = pch, cex = cex.points, col = col,...)
  text(a,b, labels=labels, pos=pos, col=col.labels, cex = cex.labels)
 }

 if(!is.null(z))
 {
  if(length(a) != length(z)) stop("z must be a vector with the same length of x")
  if(is.null(z.cex.range)) z.cex.range<-c(1,3)
  cex.bubbles <- TT.str(z, z.cex.range[1], z.cex.range[2])
  plot(b~a, xlab = xlab, ylab = ylab,main=main, type="n",...)
  points(a, b, pch = pch, col = col, type = "p", cex = cex.bubbles,...)
  text(a,b, labels=labels, pos=pos, col=col.labels, cex = cex.labels)
 }

 if(label.points==FALSE & show.labels==FALSE & is.null(z))
 {
  plot(b~a, xlab = xlab, ylab = ylab, main=main, type="p", 
  col = col, pch = pch, cex = cex.points,...)
 }
}

