setwd("D:/Computer Science/Programming/R/ImageProcessing/data")
print("working directory has been switched to: D:/Computer Science/Programming/R/ImageProcessing/data")

v <- list.files(getwd())
print("____________")
print("pic name:")
print(v)
print("____________")

num = length(v)
print("pic count:")
print(num)
print("____________")

library(jpeg)

orgpic=readJPEG(v[1])
v4res <- dim(orgpic)
a = v4res[1]
b = v4res[2]

for(i in 1:num) {
orgpic=readJPEG(v[i])
v4res <- dim(orgpic)
	if(a>v4res[1]){
	a=v4res[1]
	}
	if(b>v4res[2]){
	b=v4res[2]
	}
}

res4a <- sample(1:a, size = num)
res4b <- sample(1:b, size = num)

rownames = c("point")
colnames = c("X", "Y")

for(i in 1:num) {
M <- matrix(c(res4a[i],res4b[i]), ncol = 2,byrow = TRUE, dimnames = list(rownames, colnames))
print(M)
}
print("____________")

paintfun <- function(aa,bb){
plot(x = res4a,y = res4b,
   xlab = "Image_X",
   ylab = "Image_Y",
   xlim = c(1,aa),
   ylim = c(1,bb),		 
   main = "Discrete Point"
)
}
paintfun(1024,1024)