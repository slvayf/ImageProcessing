c <- table(unlist(resget))
print(c)

c<-1:num

mergfun <- function(){
	for(i in c){
		if(!i%in%c)
		{
			next
		}
		#当前点的RGB的平均数，在RGB向量里面相同元素的下标
		cnew <- which(resget==resget[i])
		c<-c[!c%in%cnew]
		
		print(v[cnew])
	}
}
mergfun()
