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
  cnt <- cnt()
  for (no in arg1:arg2) 
  {
    if ( no < 5 | no > 90) 
    {
      cnt[i] = vector[no] * 10
    } else {
      cnt[i] = vector[no] * 0.1 
    }
  }
  cnt
}
ftest (arg1 = 1, arg2 =120)
