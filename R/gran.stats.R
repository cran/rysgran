gran.stats <-
function(tab,method="folk",verbal=FALSE,lang="en-US")
{
clz <- as.numeric(tab[1,])
tab <- tab[2:nrow(tab),] 
tab.res <- as.data.frame(tab[,1],row.names=rownames(tab))

if (method=="moment") 
{ 
 if (verbal==FALSE)
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA,NA)) 
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("Média","Seleção","Assimetria","Curtose","Quinto.Momento","Sexto.Momento")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Sorting","Skewness","Kurtosis","Fifth.Moment","Sixth.Moment")
 }
  else
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA,NA,NA,NA,NA,NA))
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("Média","Class.Média","Seleção","Class.Seleção","Assimetria","Class.Assimetria","Curtose","Class.Curtose","Quinto.Momento","Sexto.Momento")
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
   colnames(tab.res) <- c("Média","Mediana","Seleção","Assimetria","Curtose")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Median","Sorting","Skewness","Kurtosis")
 }
 else
 {
  tab.res <- as.data.frame(cbind(tab.res,NA,NA,NA,NA,NA,NA,NA,NA))
  if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   colnames(tab.res) <- c("Média","Class.Média","Mediana","Seleção","Class.Seleção","Assimetria","Class.Assimetria","Curtose","Class.Curtose")
  if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   colnames(tab.res) <- c("Mean","Verbal.Mean","Median","Sorting","Verbal.Sorting","Skewness","Verbal.Skewness","Kurtosis","Verbal.Kurtosis")
 }
}

if (method=="moment") 
{
 for (j in 1:nrow(tab)) 
 {  
  vbz <- as.numeric(tab[j,])
  r <- length(clz)
  soma <- sum(vbz)
  mid <- clz
  mid[1] <- clz[1]-((clz[2]-clz[1])/2) 
  for (i in 2:r) mid[i] <- clz[i]-((clz[i]-clz[i-1])/2)
  vfz <- vbz*100/soma 
  pz <- vfz
  pz[1] <- vfz[1];
  for (i in 2:r) pz[i] <- pz[i-1] + vfz[i] 
  pz <- mid * vbz
  mean <- sum(pz)/soma
  std<-mid-mean
  pz <- vbz * std^2
  sort1 <- sum(pz)/(soma-1)
  sort <- sqrt(sum(pz)/(soma-1)) 
  pz <- vbz * std^3
  skew <- sum(pz)/(soma-1)
  skewness.moment <- skew/(exp(1.5*log(sort1)))
  pz <- vbz * std^4
  kurt <- sum(pz)/(soma-1)
  kurtosis.moment <- kurt/(exp(2*log(sort1)))
  pz <- vbz * std^5
  A5 <- sum(pz)/(soma-1)
  A5 <- A5/(exp(2.5*log(sort1)))
  pz <- vbz * std^6
  A6 <- sum(pz)/(soma-1)
  A6 <- A6/(exp(3*log(sort1)))

  if (verbal==FALSE)
  {
   tab.res[j,1] <- mean
   tab.res[j,2] <- sort
   tab.res[j,3] <- skewness.moment
   tab.res[j,4] <- kurtosis.moment
   tab.res[j,5] <- A5
   tab.res[j,6] <- A6
  }
  else 
  {
   if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   {
    tab.res[j,1] <- mean
    tab.res[j,2] <- class.mean.pt(mean)
    tab.res[j,3] <- sort
    tab.res[j,4] <- class.sort.pt(sort)
    tab.res[j,5] <- skewness.moment
    tab.res[j,6] <- class.skew.moment.pt(skewness.moment)
    tab.res[j,7] <- kurtosis.moment
    tab.res[j,8] <- class.kurt.moment.pt(kurtosis.moment)
    tab.res[j,9] <- A5
    tab.res[j,10] <- A6
   }
   if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   {
    tab.res[j,1] <- mean
    tab.res[j,2] <- class.mean.eng(mean)
    tab.res[j,3] <- sort
    tab.res[j,4] <- class.sort.eng(sort)
    tab.res[j,5] <- skewness.moment
    tab.res[j,6] <- class.skew.moment.eng(skewness.moment)
    tab.res[j,7] <- kurtosis.moment
    tab.res[j,8] <- class.kurt.moment.eng(kurtosis.moment)
    tab.res[j,9] <- A5
    tab.res[j,10] <- A6
   }
  }
 }
 return(tab.res)
}

if (method=="folk"|method=="mcA"|method=="mcB"|method=="trask"|method=="otto")
{
 for (j in 1:nrow(tab))
 {  
  vbz <- as.numeric(tab[j,])
  r <- length(clz)
  soma <- sum(vbz)
  vfz <- vbz*100/soma 
  pz <- vfz
  pz[1] <- vfz[1];
  for (i in 2:r) pz[i] <- pz[i-1] + vfz[i] 

  P03<-pz[pz>3][1]; PA03<-pz[(which(pz==P03))-1][1]; if (is.na(PA03)) PA03<-0; C03<-clz[which(pz==P03)][1]; CA03<-clz[(which(pz==P03))-1][1]; if (is.na(CA03)) CA03<-min(clz);
  P05<-pz[pz>5][1]; PA05<-pz[(which(pz==P05))-1][1]; if (is.na(PA05)) PA05<-0; C05<-clz[which(pz==P05)][1]; CA05<-clz[(which(pz==P05))-1][1]; if (is.na(CA05)) CA05<-min(clz);
  P10<-pz[pz>10][1]; PA10<-pz[(which(pz==P10))-1][1]; if (is.na(PA10)) PA10<-0; C10<-clz[which(pz==P10)][1]; CA10<-clz[(which(pz==P10))-1][1]; if (is.na(CA10)) CA10<-min(clz);
  P15<-pz[pz>15][1]; PA15<-pz[(which(pz==P15))-1][1]; if (is.na(PA15)) PA15<-0; C15<-clz[which(pz==P15)][1]; CA15<-clz[(which(pz==P15))-1][1]; if (is.na(CA15)) CA15<-min(clz);
  P16<-pz[pz>16][1]; PA16<-pz[(which(pz==P16))-1][1]; if (is.na(PA16)) PA16<-0; C16<-clz[which(pz==P16)][1]; CA16<-clz[(which(pz==P16))-1][1]; if (is.na(CA16)) CA16<-min(clz);
  P20<-pz[pz>20][1]; PA20<-pz[(which(pz==P20))-1][1]; if (is.na(PA20)) PA20<-0; C20<-clz[which(pz==P20)][1]; CA20<-clz[(which(pz==P20))-1][1]; if (is.na(CA20)) CA20<-min(clz);
  P25<-pz[pz>25][1]; PA25<-pz[(which(pz==P25))-1][1]; if (is.na(PA25)) PA25<-0; C25<-clz[which(pz==P25)][1]; CA25<-clz[(which(pz==P25))-1][1]; if (is.na(CA25)) CA25<-min(clz);
  P30<-pz[pz>30][1]; PA30<-pz[(which(pz==P30))-1][1]; if (is.na(PA30)) PA30<-0; C30<-clz[which(pz==P30)][1]; CA30<-clz[(which(pz==P30))-1][1]; if (is.na(CA30)) CA30<-min(clz);
  P35<-pz[pz>35][1]; PA35<-pz[(which(pz==P35))-1][1]; if (is.na(PA35)) PA35<-0; C35<-clz[which(pz==P35)][1]; CA35<-clz[(which(pz==P35))-1][1]; if (is.na(CA35)) CA35<-min(clz);
  P45<-pz[pz>45][1]; PA45<-pz[(which(pz==P45))-1][1]; if (is.na(PA45)) PA45<-0; C45<-clz[which(pz==P45)][1]; CA45<-clz[(which(pz==P45))-1][1]; if (is.na(CA45)) CA45<-min(clz);
  P50<-pz[pz>50][1]; PA50<-pz[(which(pz==P50))-1][1]; if (is.na(PA50)) PA50<-0; C50<-clz[which(pz==P50)][1]; CA50<-clz[(which(pz==P50))-1][1]; if (is.na(CA50)) CA50<-min(clz);
  P55<-pz[pz>55][1]; PA55<-pz[(which(pz==P55))-1][1]; if (is.na(PA55)) PA55<-0; C55<-clz[which(pz==P55)][1]; CA55<-clz[(which(pz==P55))-1][1]; if (is.na(CA55)) CA55<-min(clz);
  P65<-pz[pz>65][1]; PA65<-pz[(which(pz==P65))-1][1]; if (is.na(PA65)) PA65<-0; C65<-clz[which(pz==P65)][1]; CA65<-clz[(which(pz==P65))-1][1]; if (is.na(CA65)) CA65<-min(clz);
  P70<-pz[pz>70][1]; PA70<-pz[(which(pz==P70))-1][1]; if (is.na(PA70)) PA70<-0; C70<-clz[which(pz==P70)][1]; CA70<-clz[(which(pz==P70))-1][1]; if (is.na(CA70)) CA70<-min(clz);
  P75<-pz[pz>75][1]; PA75<-pz[(which(pz==P75))-1][1]; if (is.na(PA75)) PA75<-0; C75<-clz[which(pz==P75)][1]; CA75<-clz[(which(pz==P75))-1][1]; if (is.na(CA75)) CA75<-min(clz);
  P80<-pz[pz>80][1]; PA80<-pz[(which(pz==P80))-1][1]; if (is.na(PA80)) PA80<-0; C80<-clz[which(pz==P80)][1]; CA80<-clz[(which(pz==P80))-1][1]; if (is.na(CA80)) CA80<-min(clz);
  P84<-pz[pz>84][1]; PA84<-pz[(which(pz==P84))-1][1]; if (is.na(PA84)) PA84<-0; C84<-clz[which(pz==P84)][1]; CA84<-clz[(which(pz==P84))-1][1]; if (is.na(CA84)) CA84<-min(clz);
  P85<-pz[pz>85][1]; PA85<-pz[(which(pz==P85))-1][1]; if (is.na(PA85)) PA85<-0; C85<-clz[which(pz==P85)][1]; CA85<-clz[(which(pz==P85))-1][1]; if (is.na(CA85)) CA85<-min(clz);
  P90<-pz[pz>90][1]; PA90<-pz[(which(pz==P90))-1][1]; if (is.na(PA90)) PA90<-0; C90<-clz[which(pz==P90)][1]; CA90<-clz[(which(pz==P90))-1][1]; if (is.na(CA90)) CA90<-min(clz);
  P95<-pz[pz>95][1]; PA95<-pz[(which(pz==P95))-1][1]; if (is.na(PA95)) PA95<-0; C95<-clz[which(pz==P95)][1]; CA95<-clz[(which(pz==P95))-1][1]; if (is.na(CA95)) CA95<-min(clz);
  P97<-pz[pz>97][1]; PA97<-pz[(which(pz==P97))-1][1]; if (is.na(PA97)) PA97<-0; C97<-clz[which(pz==P97)][1]; CA97<-clz[(which(pz==P97))-1][1]; if (is.na(CA97)) CA97<-min(clz);

  PT03<-CA03 + ((C03 - CA03) * ((03 - PA03) / (P03 - PA03)))
  PT05<-CA05 + ((C05 - CA05) * ((05 - PA05) / (P05 - PA05)))
  PT10<-CA10 + ((C10 - CA10) * ((10 - PA10) / (P10 - PA10)))
  PT15<-CA15 + ((C15 - CA15) * ((15 - PA15) / (P15 - PA15)))
  PT16<-CA16 + ((C16 - CA16) * ((16 - PA16) / (P16 - PA16)))
  PT20<-CA20 + ((C20 - CA20) * ((20 - PA20) / (P20 - PA20)))
  PT25<-CA25 + ((C25 - CA25) * ((25 - PA25) / (P25 - PA25)))
  PT30<-CA30 + ((C30 - CA30) * ((30 - PA30) / (P30 - PA30)))
  PT35<-CA35 + ((C35 - CA35) * ((35 - PA35) / (P35 - PA35)))
  PT45<-CA45 + ((C45 - CA45) * ((45 - PA45) / (P45 - PA45)))
  PT50<-CA50 + ((C50 - CA50) * ((50 - PA50) / (P50 - PA50)))
  PT55<-CA55 + ((C55 - CA55) * ((55 - PA55) / (P55 - PA55)))
  PT65<-CA65 + ((C65 - CA65) * ((65 - PA65) / (P65 - PA65)))
  PT70<-CA70 + ((C70 - CA70) * ((70 - PA70) / (P70 - PA70)))
  PT75<-CA75 + ((C75 - CA75) * ((75 - PA75) / (P75 - PA75)))
  PT80<-CA80 + ((C80 - CA80) * ((80 - PA80) / (P80 - PA80)))
  PT84<-CA84 + ((C84 - CA84) * ((84 - PA84) / (P84 - PA84)))
  PT85<-CA85 + ((C85 - CA85) * ((85 - PA85) / (P85 - PA85)))
  PT90<-CA90 + ((C90 - CA90) * ((90 - PA90) / (P90 - PA90)))
  PT95<-CA95 + ((C95 - CA95) * ((95 - PA95) / (P95 - PA95)))
  PT97<-CA97 + ((C97 - CA97) * ((97 - PA97) / (P97 - PA97)))
  
  if (method=="folk")
  {
   mean<-(PT16+PT50+PT84)/3;
   median<-PT50
   sort<-((PT84-PT16)/4)+((PT95-PT05)/6.6);
   skewness<-((PT16+PT84-2*PT50)/(2*(PT84-PT16)))+((PT05+PT95-2*PT50)/(2*(PT95-PT05)));
   kurtosis<-(PT95-PT05)/(2.44*(PT75-PT25));
  }
  if (method=="mcA") 
  {
   mean<-((PT10+PT30+PT50+PT70+PT90)/5);
   median<-PT50
   sort<-((PT85+PT95-PT05-PT15)/5.4);
   skewness<-((PT16+PT84-2*PT50)/(2*(PT84-PT16)))+((PT05+PT95-2*PT50)/(2*(PT95-PT05)));
   kurtosis<-(PT95-PT05)/(2.44*(PT75-PT25));
  }
  if (method=="mcB") 
  {
   mean<-(PT05+PT15+PT25+PT35+PT45+PT55+PT65+PT75+PT85+PT95)/10;
   median<-PT50
   sort<-(PT70+PT80+PT90+PT97-PT03-PT10-PT20-PT30)/9.1;
   skewness<-((PT16+PT84-2*PT50)/(2*(PT84-PT16)))+((PT05+PT95-2*PT50)/(2*(PT95-PT05)));
   kurtosis<-(PT95-PT05)/(2.44*(PT75-PT25));
  }
  if (method=="trask") 
  {
   mean<-PT50;
   median<-PT50
   sort<-(PT75-PT25)/1.35;
   skewness<-((PT16+PT84-2*PT50)/(2*(PT84-PT16)))+((PT05+PT95-2*PT50)/(2*(PT95-PT05)));
   kurtosis<-(PT95-PT05)/(2.44*(PT75-PT25));
  }
  if (method=="otto") 
  {
   mean<-(PT16+PT84)/2;
   median<-PT50
   sort<-(PT84-PT16)/2;
   skewness<-((PT16+PT84-2*PT50)/(2*(PT84-PT16)))+((PT05+PT95-2*PT50)/(2*(PT95-PT05)));
   kurtosis<-(PT95-PT05)/(2.44*(PT75-PT25));
  }
  if (verbal==FALSE) 
  {
   tab.res[j,1] <- mean
   tab.res[j,2] <- median
   tab.res[j,3] <- sort
   tab.res[j,4] <- skewness
   tab.res[j,5] <- kurtosis
  }
  else 
  {
   if (lang=="pt-BR" | lang=="pt-PT"| lang=="port"| lang=="p")
   {
    tab.res[j,1] <- mean
    tab.res[j,2] <- class.mean.pt(mean)
    tab.res[j,3] <- median
    tab.res[j,4] <- sort
    tab.res[j,5] <- class.sort.pt(sort)
    tab.res[j,6] <- skewness
    tab.res[j,7] <- class.skew.pt(skewness)
    tab.res[j,8] <- kurtosis
    tab.res[j,9] <- class.kurt.pt(kurtosis)
   }
   if (lang=="en-US" | lang=="en-GR"| lang=="eng"| lang=="e")
   {
    tab.res[j,1] <- mean
    tab.res[j,2] <- class.mean.eng(mean)
    tab.res[j,3] <- median
    tab.res[j,4] <- sort
    tab.res[j,5] <- class.sort.eng(sort)
    tab.res[j,6] <- skewness
    tab.res[j,7] <- class.skew.eng(skewness)
    tab.res[j,8] <- kurtosis
    tab.res[j,9] <- class.kurt.eng(kurtosis)
   }
  }
 }
 return(tab.res) 
}
}

