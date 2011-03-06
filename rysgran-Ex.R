pkgname <- "rysgran"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('rysgran')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("camargo2001")
### * camargo2001

flush(stderr()); flush(stdout())

### Name: camargo2001
### Title: Dataframe Containing Sample Weight (Grams) of each Mesh Size
###   (phi units)
### Aliases: camargo2001
### Keywords: datasets

### ** Examples

data(camargo2001)



cleanEx()
nameEx("class.kurt.eng")
### * class.kurt.eng

flush(stderr()); flush(stdout())

### Name: class.kurt.eng
### Title: Verbal Classification for Kurtosis
### Aliases: class.kurt.eng
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="en-US")



cleanEx()
nameEx("class.kurt.moment.eng")
### * class.kurt.moment.eng

flush(stderr()); flush(stdout())

### Name: class.kurt.moment.eng
### Title: Verbal Classification for Kurtosis
### Aliases: class.kurt.moment.eng
### Keywords: internal

### ** Examples

#Method of Moments with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="moment" , verbal=TRUE , lang="en-US")



cleanEx()
nameEx("class.kurt.moment.pt")
### * class.kurt.moment.pt

flush(stderr()); flush(stdout())

### Name: class.kurt.moment.pt
### Title: Verbal Classification for Skewness in Portuguese Language
### Aliases: class.kurt.moment.pt
### Keywords: internal

### ** Examples

#Method of Moments with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="moment" , verbal=TRUE , lang="pt-BR")



cleanEx()
nameEx("class.kurt.pt")
### * class.kurt.pt

flush(stderr()); flush(stdout())

### Name: class.kurt.pt
### Title: Verbal Classification for Kurtosis in Portuguese Language
### Aliases: class.kurt.pt
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE, lang="pt-BR")



cleanEx()
nameEx("class.mean.eng")
### * class.mean.eng

flush(stderr()); flush(stdout())

### Name: class.mean.eng
### Title: Verbal Classification for Mean
### Aliases: class.mean.eng
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="en-US")



cleanEx()
nameEx("class.mean.pt")
### * class.mean.pt

flush(stderr()); flush(stdout())

### Name: class.mean.pt
### Title: Verbal Classification for Mean in Portuguese Language
### Aliases: class.mean.pt
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="pt-BR")



cleanEx()
nameEx("class.percent")
### * class.percent

flush(stderr()); flush(stdout())

### Name: class.percent
### Title: Weight Percentages of Textural Classes
### Aliases: class.percent

### ** Examples

#Example
#testing the differents modes
library(rysgran)
data(camargo2001)
tab<-camargo2001
class.percent(tab, mode="total", empty.col=FALSE, lang="en-US")
class.percent(tab, mode="classes", empty.col=FALSE, lang="en-US")
class.percent(tab, mode="both", empty.col=FALSE, lang="en-US")



cleanEx()
nameEx("class.skew.eng")
### * class.skew.eng

flush(stderr()); flush(stdout())

### Name: class.skew.eng
### Title: Verbal Classification for Skewness
### Aliases: class.skew.eng
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="en-US")



cleanEx()
nameEx("class.skew.moment.eng")
### * class.skew.moment.eng

flush(stderr()); flush(stdout())

### Name: class.skew.moment.eng
### Title: Verbal Classification for Skewness
### Aliases: class.skew.moment.eng
### Keywords: internal

### ** Examples

#Method of Moments with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="moment" , verbal=TRUE , lang="en-US")



cleanEx()
nameEx("class.skew.moment.pt")
### * class.skew.moment.pt

flush(stderr()); flush(stdout())

### Name: class.skew.moment.pt
### Title: Verbal Classification for Skewness in Portuguese Language
### Aliases: class.skew.moment.pt
### Keywords: internal

### ** Examples

#Method of Moments with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="moment" , verbal=TRUE , lang="pt-BR")



cleanEx()
nameEx("class.skew.pt")
### * class.skew.pt

flush(stderr()); flush(stdout())

### Name: class.skew.pt
### Title: Verbal Classification for Skewness in Portuguese Language
### Aliases: class.skew.pt
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="pt-BR")



cleanEx()
nameEx("class.sort.eng")
### * class.sort.eng

flush(stderr()); flush(stdout())

### Name: class.sort.eng
### Title: Verbal Classification for Sorting
### Aliases: class.sort.eng
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method = "folk" , verbal = TRUE , lang = "en-US")



cleanEx()
nameEx("class.sort.pt")
### * class.sort.pt

flush(stderr()); flush(stdout())

### Name: class.sort.pt
### Title: Verbal Classification for Sorting in Portuguese Language
### Aliases: class.sort.pt
### Keywords: internal

### ** Examples

#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="pt-BR")



cleanEx()
nameEx("gran.stats")
### * gran.stats

flush(stderr()); flush(stdout())

### Name: gran.stats
### Title: Statistical Analysis of Grain Size for Unconsolidated Sediments
### Aliases: gran.stats

### ** Examples

#Example
library (rysgran)
data (camargo2001)
tab <- camargo2001
#
#Folk & Ward
gran.stats(tab , method = "folk" , verbal = FALSE, lang="en-US")
#
#Folk & Ward with verbal classification
gran.stats (tab , method = "folk" , verbal = TRUE, lang="en-US")
#
#Folk & Ward in portuguese
gran.stats (tab , method = "folk" , verbal = TRUE, lang="pt-BR")
#
#Method of Moments with verbal classification
gran.stats (tab , method = "moment" , verbal = TRUE)



cleanEx()
nameEx("pejrup.plot")
### * pejrup.plot

flush(stderr()); flush(stdout())

### Name: pejrup.plot
### Title: Generates the Structure of Pejrup Ternary Diagram
### Aliases: pejrup.plot
### Keywords: internal

### ** Examples

#Pejrup diagram
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total", empty.col=FALSE, lang='en-US')
rysgran.ternary  (x = percent[2:4], method = "pejrup")



cleanEx()
nameEx("rysgran-package")
### * rysgran-package

flush(stderr()); flush(stdout())

### Name: rysgran-package
### Title: Grain size analysis, textural classifications and distribution
###   of unconsolidated sediments
### Aliases: rysgran-package rysgran
### Keywords: package

### ** Examples

#Example 1
#grain size analysis using
#Folk & Ward with verbal classification
library (rysgran)
data (camargo2001)
tab <- camargo2001
gran.stats (tab, method="folk" , verbal=TRUE)
##
##
#Example 2
#weight percentages
library (rysgran)
data (camargo2001)
tab <- camargo2001
class.percent (tab, mode="total", empty.col=FALSE)
##
##
#Example 3
#histograms
library (rysgran)
data (camargo2001)
tab <- camargo2001
rysgran.hist (tab , ordered = TRUE)
##
##
#Example 4
#bivariated plot
library (rysgran)
data (camargo2001)
tab <- camargo2001
rysgran.plot ("mean" , "sort" , data = tab, method="folk")
##
##
#Example 5
#ternary diagram of Shepard
library (rysgran)
data (camargo2001)
tab <- camargo2001
percent <- class.percent(tab, mode="total", empty.col=FALSE, lang="en-US")
rysgran.ternary  (x = percent[2:4], method = "shepard")



cleanEx()
nameEx("rysgran.hist")
### * rysgran.hist

flush(stderr()); flush(stdout())

### Name: rysgran.hist
### Title: Histograms of Grain Size Data
### Aliases: rysgran.hist

### ** Examples

#Example 1
#histograms ordered by as a table
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.hist(tab, ordered=TRUE)
#
#Example 2
#histograms ordered alphabetically
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.hist(tab, ordered=FALSE)
#
#Example 3 
#histograms separated by factors
library(rysgran)
data(camargo2001)
tab<-camargo2001
months<- rep(c("Jan","Fev","Mar","Abr","Mai"),each=7)
rysgran.hist(tab, ordered=TRUE , subset = months , which= "Jan")
#
#Example 4
#Histograms updated
library(rysgran)
data(camargo2001)
tab<-camargo2001
hist <- rysgran.hist(tab, ordered=TRUE)
hist
hist.up <- update(hist, aspect = .5,
    scales=list(x=list(cex=.7),y=list(cex=.7)),
    between= list(x = c(0.2), y = c(0.2)),
    ylab = "Frequency",
    xlab = "Phi",
    strip = strip.custom(bg = "lightblue"),
    col = "red",
    main="Histogram")
hist.up



cleanEx()
nameEx("rysgran.plot")
### * rysgran.plot

flush(stderr()); flush(stdout())

### Name: rysgran.plot
### Title: Generates a Bivariated Plot
### Aliases: rysgran.plot

### ** Examples

# Plot Mean and Sorting
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.plot ("mean" , "sort" , data=tab, method="folk")
#
# Using show.labels
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.plot("mean" , "sort" , data=tab , method="folk",
	lang="en-US", show.labels = TRUE,
	col.labels = "blue", labels = NULL, cex.labels = 0.8)
#
# Skewness and Kurtosis with label.points
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.plot ("skew" , "kurt" , data=tab , method="folk",
	lang="en-US", show.labels = FALSE, labels = NULL,
	label.points = TRUE, pch = 19, col.labels = "black",
	col = "blue", cex.labels = 0.8, 
	cex.points = 1, pos=1)
#
# Sorting and Kurtosis with Mean as bubbles
library(rysgran)
data(camargo2001)
tab<-camargo2001
rys <- gran.stats(tab , method="folk" , verbal=FALSE , lang="en-US")
rysgran.plot ("sort" , "kurt" , data=tab, method="folk",
	lang="en-US", show.labels = FALSE, labels = NULL,
	label.points = TRUE, pch = 21, col.labels = "white",
	col = "red", cex.labels = 0.8, pos=NULL, z=rys$Mean,
	z.cex.range=c(2.5,6), bg="red")
#
# With legend
library(rysgran)
data(camargo2001)
tab<-camargo2001
months <- as.factor(rep(c("Jan","Mar","May","Jul","Sep"),each=7))
months <- factor(months, levels = c("Jan","Mar","May","Jul","Sep"))
rysgran.plot ("sort" , "kurt",  data = tab, method="folk",
	lang="en-US",show.labels = FALSE, label.points = TRUE, 
	pch =  c(15,17,18,19,20)[months], 
	col.labels = "black", labels = months, cex.labels = 0.8,
	col = c("black","brown","blue","red","green")[months],
	cex.points = 2, pos=1, z.cex.range=NULL, z=NULL)
legend("topright", c("January","March","May","July","September") , 
	pch= c(15,17,18,19,20), col= c("black","brown","blue","red","green"))



cleanEx()
nameEx("rysgran.ternary")
### * rysgran.ternary

flush(stderr()); flush(stdout())

### Name: rysgran.ternary
### Title: Generates the Ternary Diagrams of Shepard and Pejrup
### Aliases: rysgran.ternary

### ** Examples

#Shepard diagram
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total")
rysgran.ternary  (x = percent[2:4], method = "shepard")
#
#Pejrup diagram
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total")
rysgran.ternary  (x = percent[2:4], method = "pejrup")
#
#Shepard diagram with show.labels
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total")
rysgran.ternary (x = percent[2:4], method = "shepard",
    z = NULL, show.labels = TRUE, label.points = FALSE,
    labels = NULL, cex.labels = 0.8, cex.axis = 1, 
    col.labels = "black", col.axis = "black")
#
#Shepard diagram with label.points
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total")
rysgran.ternary (x = percent[2:4], method = "shepard", 
    z = NULL, label.points = TRUE, labels = NULL,
    show.names = TRUE, show.legend = TRUE,  cex.labels = 0.8,
    cex.points = 1.5, cex.axis = 1, cex.names = 0.8,
    col.names = "gray", col = "black", col.labels = "black",  
    pos = 1, pch = 20)
#
#Shepard diagram with Sorting as bubbles
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total")
rys <- gran.stats(tab , method="folk")
rysgran.ternary (x = percent[2:4], method = "shepard",
    z = rys$Sorting, label.points = FALSE, labels = NULL, 
    z.cex.range = c(0.5,4), cex.labels = 0.8, cex.axis = 1, 
    cex.names = 0.8, col = "blue", pos = 1, pch = 20)



cleanEx()
nameEx("shepard.plot")
### * shepard.plot

flush(stderr()); flush(stdout())

### Name: shepard.plot
### Title: Generates the Structure of Shepard Ternary Diagram
### Aliases: shepard.plot
### Keywords: internal

### ** Examples

#Shepard ternary diagram
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total")
rysgran.ternary  (x = percent[2:4], method = "shepard")



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
