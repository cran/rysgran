gran.stats <-function(data, output = "phi", method="folk", verbal=FALSE, lang="en-US"){
  clz <- as.numeric(data[1,])
  if (sum(clz) > 70){
    clz<-(-log2(clz/1000))
  }

  tab <- data[2:nrow(data),]
  tab.res <- as.data.frame(tab[,1],row.names=rownames(tab))

if (method=="moment") 
{ 
 if (verbal==FALSE)
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA,NA)) 
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("M\u00E9dia","Sele\u00E7\u00E3o","Assimetria","Curtose","Quinto.Momento","Sexto.Momento")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Sorting","Skewness","Kurtosis","Fifth.Moment","Sixth.Moment")
 }
  else
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA,NA,NA,NA,NA,NA))
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("M\u00E9dia","Class.M\u00E9dia","Sele\u00E7\u00E3o","Class.Sele\u00E7\u00E3o","Assimetria","Class.Assimetria","Curtose","Class.Curtose","Quinto.Momento","Sexto.Momento")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Verbal.Mean","Sorting","Verbal.Sorting","Skewness","Verbal.Skewness","Kurtosis","Verbal.Kurtosis","Fifth.Moment","Sixth.Moment")
 }
}
 else
{
 if (verbal==FALSE)
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA))
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("M\u00E9dia","Mediana","Sele\u00E7\u00E3o","Assimetria","Curtose")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Median","Sorting","Skewness","Kurtosis")
 }
 else
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA,NA,NA,NA,NA))
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("M\u00E9dia","Class.M\u00E9dia","Mediana","Sele\u00E7\u00E3o","Class.Sele\u00E7\u00E3o","Assimetria","Class.Assimetria","Curtose","Class.Curtose")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Verbal.Mean","Median","Sorting","Verbal.Sorting","Skewness","Verbal.Skewness","Kurtosis","Verbal.Kurtosis")
 }
}
for (j in 1:nrow(tab)){
  vbz <- as.numeric(tab[j,])
  if (method=="moment"){
    table<-moment(clz, vbz, output=output)
    if (verbal==FALSE){
      tab.res[j,1] <- table$mean
      tab.res[j,2] <- table$sort
      tab.res[j,3] <- table$skew
      tab.res[j,4] <- table$kurt
      tab.res[j,5] <- table$A5
      tab.res[j,6] <- table$A6
      }
    if (verbal ==TRUE){
      tab.res[j,1] <- table$mean
      tab.res[j,2] <- class.mean(table$mean, lang=lang, output=output)
      tab.res[j,3] <- table$sort
      tab.res[j,4] <- class.sort(table$sort, method=method, lang=lang, output=output)
      tab.res[j,5] <- table$skew
      tab.res[j,6] <- class.skew(table$skew, method=method, lang=lang, output=output)
      tab.res[j,7] <- table$kurt
      tab.res[j,8] <- class.kurt(table$kurt, method=method, lang=lang, output=output)
      tab.res[j,9] <- table$A5
      tab.res[j,10] <- table$A6
      }
    }
  if (method=="folk"|method=="mcA"|method=="mcB"|method=="trask"|method=="otto"){
    table <- others.methods(clz, vbz, method=method, output=output)
    if (verbal==FALSE){
      tab.res[j,1] <- table$mean
      tab.res[j,2] <- table$median
      tab.res[j,3] <- table$sort
      tab.res[j,4] <- table$skew
      tab.res[j,5] <- table$kurt
      }
    if (verbal ==TRUE){
      tab.res[j,1] <- table$mean
      tab.res[j,2] <- class.mean(table$mean, lang=lang, output=output)
      tab.res[j,3] <- table$median
      tab.res[j,4] <- table$sort
      tab.res[j,5] <- class.sort(table$sort, method=method, lang=lang, output=output)
      tab.res[j,6] <- table$skew
      tab.res[j,7] <- class.skew(table$skew, method=method, lang=lang, output=output)
      tab.res[j,8] <- table$kurt
      tab.res[j,9] <- class.kurt(table$kurt, method=method, lang=lang, output=output)
      }
    }
  }
  return (tab.res)
}
