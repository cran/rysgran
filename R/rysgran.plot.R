rysgran.plot <-
function (x=NULL , y=NULL , data=NULL, output = "phi", lang="en-US", method="folk",
main = NULL, xlab = NULL, ylab = NULL, show.labels = FALSE, 
label.points = FALSE, pch = 1, col.labels = "black",
labels = NULL, col = "black", cex.labels = 1, cex.points = 1,
pos=1, z.cex.range=NULL, z=NULL,...)

{
 tab1 <- as.data.frame (data)
 a<-0
 b<-0

tab<-gran.stats(data=tab1, output=output, method=method, verbal=FALSE, lang="en-US")



 if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
 {
  title<-as.character(c("Bivariated Plot"))
  if (x=="mean" | x=="Mean" | x=="M\u00E9dia" | x=="Media" | x=="m\u00E9dia" | x=="media")
  {
   a<-as.matrix(tab$Mean);colnames(a)<-c("Mean")
  }

  if (x=="Sorting" | x=="sorting" | x=="sort" | x=="Sort" | x=="Sele\u00E7\u00E3o" | x=="Sele\u00E7ao" | x=="Selecao" | x=="sele\u00E7\u00E3o" | x=="sele\u00E7ao" | x=="selecao" | x=="Sele" | x=="sele")
  {
   a<-as.matrix(tab$Sorting);colnames(a)<-c("Sorting")
  }

  if (x=="Skewness" | x=="skewness" | x=="Skew" | x=="skew" | x=="Assimetria" | x=="assimetria" | x=="Ass" | x=="ass")
  {
   a<-as.matrix(tab$Skewness);colnames(a)<-c("Skewness")
  }

  if (x=="Kurtosis" | x=="kurtosis" | x=="Kurt" | x=="kurt" | x=="Curtose" | x=="curtose" | x=="Curt" | x=="curt")
  {
   a<-as.matrix(tab$Kurtosis);colnames(a)<-c("Kurtosis")
  }

  if (y=="Mean" | y=="mean" | y=="M\u00E9dia" | y=="Media" | y=="m\u00E9dia" | y=="media")
  {
   b<-as.matrix(tab$Mean);colnames(b)<-c("Mean")
  }

  if (y=="Sorting" | y=="sorting" | y=="Sort" | y=="sort" | y=="Sele\u00E7\u00E3o" | y=="Sele\u00E7ao" | y=="Selecao" | y=="sele\u00E7\u00E3o" | y=="sele\u00E7ao" | y=="selecao" | y=="Sele" | y=="sele")
  {
   b<-as.matrix(tab$Sorting);colnames(b)<-c("Sorting")
  }

  if (y=="Skewness" | y=="skewness" | y=="Skew" | y=="skew" | y=="Assimetria" | y=="assimetria" | y=="Ass" | y=="ass")
  {
   b<-as.matrix(tab$Skewness);colnames(b)<-c("Skewness")
  }

  if (y=="Kurtosis" | y=="kurtosis" | y=="Kurt" | y=="kurt" | y=="Curtose" | y=="curtose" | y=="Curt" | y=="curt")
  {
   b<-as.matrix(tab$Kurtosis);colnames(b)<-c("Kurtosis") 
  }
 }

 if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
 {
  title<-as.character(c("Gr\u00E1fico Bivariado"))
  if (x=="mean" | x=="Mean" | x=="M\u00E9dia" | x=="Media" | x=="m\u00E9dia" | x=="media")
  {
   a<-as.matrix(tab$Mean);colnames(a)<-c("M\u00E9dia") 
  }

  if (x=="Sorting" | x=="sorting" | x=="sort" | x=="Sort" | x=="Sele\u00E7\u00E3o" | x=="Sele\u00E7ao" | x=="Selecao" | x=="sele\u00E7\u00E3o" | x=="sele\u00E7ao" | x=="selecao" | x=="Sele" | x=="sele")
  {
   a<-as.matrix(tab$Sorting);colnames(a)<-c("Sele\u00E7\u00E3o")
  }

  if (x=="Skewness" | x=="skewness" | x=="Skew" | x=="skew" | x=="Assimetria" | x=="assimetria" | x=="Ass" | x=="ass")
  {
   a<-as.matrix(tab$Skewness);colnames(a)<-c("Assimetria") 
  }

  if (x=="Kurtosis" | x=="kurtosis" | x=="Kurt" | x=="kurt" | x=="Curtose" | x=="curtose" | x=="Curt" | x=="curt")
  {
   a<-as.matrix(tab$Kurtosis);colnames(a)<-c("Curtose")
  }

  if (y=="Mean" | y=="mean" | y=="M\u00E9dia" | y=="Media" | y=="m\u00E9dia" | y=="media")
  {
   b<-as.matrix(tab$Mean);colnames(b)<-c("M\u00E9dia")
  }

  if (y=="Sorting" | y=="sorting" | y=="Sort" | y=="sort" | y=="Sele\u00E7\u00E3o" | y=="Sele\u00E7ao" | y=="Selecao" | y=="sele\u00E7\u00E3o" | y=="sele\u00E7ao" | y=="selecao" | y=="Sele" | y=="sele")
  {
   b<-as.matrix(tab$Sorting);colnames(b)<-c("Sele\u00E7\u00E3o")  
  }

  if (y=="Skewness" | y=="skewness" | y=="Skew" | y=="skew" | y=="Assimetria" | y=="assimetria" | y=="Ass" | y=="ass")
  {
   b<-as.matrix(tab$Skewness);colnames(b)<-c("Assimetria")
  }

  if (y=="Kurtosis" | y=="kurtosis" | y=="Kurt" | y=="kurt" | y=="Curtose" | y=="curtose" | y=="Curt" | y=="curt")
  {
   b<-as.matrix(tab$Kurtosis);colnames(b)<-c("Curtose") 
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

