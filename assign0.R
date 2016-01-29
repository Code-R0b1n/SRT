x1 <- rnorm(100)*10
x2 <- rnorm(100)*10
x3 <- rnorm(100)*10
t <- data.frame(a = x1, b = x1+x2, c = x1+x2+x3)
plot(t$a+t$b+t$c)
sd(t$a+t$b+t$c)

plot(t$a, type="l", ylim=range(t), 
     lwd=3, col=rgb(1,0,0,0.3))
lines (t$b, type="s", lwd=2,
       col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=20, cex=4, 
       col=rgb(0,0,1,0.3))

test <- read.table(file="tst1.txt", header = T)
test
test$g*2
write.table(test$g*2, file="tst2.txt", row.names=FALSE)

date1 <- strptime( c("20160126", "20141206", "20160204"), format = "%Y%m%d")
numpres <- c(0,5,10)
g <- data.frame(date1, numpres)
plot(date1,numpres)

v <- seq(from=1, to=100)
c <- c()
for (i in 1:100) 
  {
  if ( i < 5 | i > 90) 
    {
      c[i] = v[i] * 10
    } else {
      c[i] = v[i] * 0.1 
    }
  }
c

ftest <- function(arg1, arg2)
{
  vector <- seq(from=arg1, to=arg2)
  cnt <- c()
  for (no in arg1:arg2) 
  {
    if ( no < 5 | no > 90) 
    {
      cnt[no] = vector[no] * 10
    } else {
      cnt[no] = vector[no] * 0.1 
    }
  }
  cnt
}

ftest2 <- function(arg1,arg2){
  vector = seq(from=arg1, to=arg2)
  vector2 <-  c(vector[vector<5 ]*10, vector[vector>4 & vector<91]*0.1,vector[vector>90]*10)
  vector2
}

ftest2(arg1=3,arg2 = 6)

ftest3 <- function(arg1,arg2){
  vector = c()
  arg1 <- arg1 - 1
  no <- 0
  for ( arg1 in arg1:arg2 ){
    if (arg1 < 5 | arg1 > 90){
      vector[no] <- arg1 * 10
    } else {
      vector[no] <- arg1 * 0.1 
    }
    no <- no + 1
  }
  vector
}

  vector = c()
  no <- 0
  for ( i in 0:100 ){
    if (i < 5 | i > 90){
      vector[no] <- i * 10
    } else {
      vector[no] <- i * 0.1 
    }
    no <- no + 1
  }
  vector
ftest3(arg1 = 1, arg2 = 100)

ftest2(arg1 = 60, arg2 = 127)

vector = seq(from=1, to=23)
vector2 <-  c(vector[vector<5 | vector>90]*10,vector[vector>4 & vector<91]*0.1)
vector2



ftest <- function(arg1, arg2)
{
  vector <- seq(from=arg1, to=arg2)
  cnt <- c()
  for ( no in arg1:arg2) 
  {
    if ( no > 5 & no < 90 ) 
    {
      cnt[arg1] = vector[arg1] * 0.1
    } else {
      cnt[arg1] = vector[arg1] * 10
    }
  }
  cnt
}


ftest3(arg1 = 10, arg2 =-1)
 
