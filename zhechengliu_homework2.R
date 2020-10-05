#question 1
is_pythagorean = function(a,b,c)
  if(c*c == a*a + b*b){
    print(TRUE)
  }else{
    print(FALSE)
  }

is_pythagorean(3,4,5)

##question 2
#check the prime function
is_prime=function(a){
  if (a == 2) {
    TRUE
  } else if (any(a %% 2:(a-1) == 0)) {
    FALSE
  } else { 
    TRUE
  }
}
#  Write a for-loop that prints all
#the prime numbers from 1000 to 100 in reverse order.
for(i in 1000:100){
  if(is_prime(i)==TRUE)
    print(paste(i))
}

########3
##question3
x <- matrix(c(20,30,50,30,20,60,30,30,32),ncol=3,byrow=TRUE)
colnames(x) <- c("Wine","Vodka","Lemon Juice")
rownames(x) <- c("A","B","C")
x <- as.table(x)
x
#produce the table of blend

p = matrix(c(5,45,10),ncol=1,byrow=TRUE)
colnames(p)=c("Price")
rownames(p)=c("Wine","Vodka","Lemon Juice")
p=as.table(p)
p

price=matrix(c(0,0,0), ncol=1,byrow=TRUE)
colnames(price)=c("Price")
rownames(price)=c("A","B","C")
for(i in 1:3){
  for( j in 1:3){
    price[i,1] = price[i,1]+ x[i,j] * p[j,1]
  }
}
price



######## part b
program1 = function(a,b){
  price=matrix(c(0,0,0), ncol=1,byrow=TRUE)
  colnames(price)=c("Price")
  rownames(price)=c("A","B","C")
  for(i in 1:3){
    for( j in 1:3){
      price[i,1] = price[i,1]+ x[i,j] * p[j,1]
  }
}
    price
    total_price=0
      for(i in 1:3){
        total_price= total_price + 4*price[i,1]
}
      print(paste("",total_price))
}
##test the function
program1(x,p)
