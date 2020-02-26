rgbsum <- c(0,0)
resget <- c(0,0)

for(i in 1:num) {
print(i)
a = 0
orgpic=readJPEG(v[i])
		for(j in 1:num) {
		v4rgb <- orgpic[res4a[j],res4b[j],]
		print(v4rgb)
		rgbsum[j] = (v4rgb[1]+v4rgb[2]+v4rgb[3])/3
		print (rgbsum[j])
		print("__")
		a = a+rgbsum[j]
		}
print(a)
resget[i]=a
print("____________")
}

picfun <- function(x){
  for(i in 1:x) {
	print(resget[i])
  }
}

picfun(num)
print("____________")