rm(list= ls())

# 벡터연산
score <- c(10, 20)
score + 2

score
score <- score + 2
score

first_score <- c(100, 80)
second_score <- c(94, 86)

sum_score <- first_score + second_score
sum_score

diff <- first_score - second_score
diff

first_score[3] <- 200
sum <- first_score + second_score  #  길이가 다르면 긴쪽에 맞춘다.

sum

third_score <- c(100, 200, 300)
fourth_score <- c(100, 91, 300)

third_score == fourth_score

third_score >= 0 & third_score <= 100

third_score %in% c(1, 2, 100)

# 행렬연산 

m1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
m1 <- m1 * 10

m1

m2 <- matrix(c(1:9), nrow = 3)
m3 <- matrix(rep(2, 9), nrow = 3)
m2
m3
m2 + m3
m2 * m3
m2 %*% m3

jumsu <- matrix(c(1:4), ncol = 2, byrow = T)
jumsu

weight <- matrix(c(5:10), ncol = 3, byrow = TRUE)
weight

jumsu %*% weight

t(jumsu)

solve(jumsu)

# if~else 문

math_score <- 95
if(math_score <= 100 & math_score >= 80){
        print("조건이 TRUE일 경우에만 수행할 문장")
}

if(math_score > 96) {
        print("S")
} else {
        print("A or B or C")
}

if(math_score >= 96) {
        print("S")
} else if(math_score >= 90) {
        print("A")
} else if(math_score >= 80) {
        print("B")
} else if(math_score >= 70) {
        print("C")
} else if(math_score >= 60) {
        print("D")
} else {print("F")}

ifelse(math_score >= 96, "S", "FALSE일 때 수행")
ifelse(math_score >= 96, "S", ifelse(math_score >= 90, "A", "B or C or D"))

# for 문
for(num in (1:3)) {
        print(num)
}

for(num in (1:3))
        print(num)

for(num in (1:5)) {
        if(num %% 2 == 0)
                print(paste(num, "짝수"))
        else
                print(paste(num, "홀수"))
                
}

num <- c(1:5)
ifelse(num %% 2 == 0, paste(num, "짝수"), paste(num, "홀수"))

# while 문
num <- 1
while(num <= 5) {
        print(num)
        num <- num + 1
}

# break 문
s <- 0
for(x in(1:1000)) {
        s <- s + x
        if(s >= 100)
                break
}
print(s)

# next 문
cnt = 0
for(cnt in c(1, 2, NA, 3, 4, NA, 5)) {
        if(is.na(cnt))
                next
        print(cnt)
}

# repeat 문
num <- 1
repeat {
        print(num)
        num <- num + 2
        if(num > 10)
                break;
}

## 함수
a <- function() {
        print("testa")
        print("testa")
}

a()

a <- function(num) {
        print(num)
}

a(20)
a(10)
a()

a <- function(num1, num2) {
        print(paste(num1, " ", num2))
}

a(10, 20)

a(num1 = 10, num2 <- 20)
print(num1)
print(num2)

a <- function(num1, num2 = 20) {
        print(paste(num1, " ", num2))
}

a(10)
a(10, 30)
a(, 10)

calculator <- function(num1, num2, op = "+") {
        result <- 0
        if(op == "+"){
                result <- num1 + num2
        }else if(op == "-"){
                result <- num1 - num2
        }else if(op == "*"){
                result <- num1 * num2
        }else if(op == "/"){
                result <- num1 / num2
        } 
        print(result)
}

calculator(10, 20, "-")
calculator(10, 20)

a <- function(...){
        for(n in c(...)){
                print(n)
        }
}

a(1, 2, 4)

calculator <- function(num1, op = "+", num2) {
        result <- 0
        if(op == "+"){
                result <- num1 + num2
        }else if(op == "-"){
                result <- num1 - num2
        }else if(op == "*"){
                result <- num1 * num2
        }else if(op == "/"){
                result <- num1 / num2
        } 
        return(result)
}

n <- calculator(1, "+", 2)
print(n)

a <- NULL
is.null(a)

b <- NA
is.na(b)

jumsu <- c(NA, 40, 60)
is.na(jumsu)

num <- 10 / 0
num

num <- -10 / 0 ; num
num <- 0/ 0 ; num

data <- c(1, 2, 3)
d1 <- as.character(data)
d2 <- as.numeric(data)
d3 <- as.factor(data)
d4 <- as.matrix(data)
d5 <- as.array(data)
d6 <- as.data.frame(data)
is.character(data)
is.numeric(data)
is.factor(data)
is.matrix(data)
is.array(data)
is.data.frame(data)

class(data)
str(data)

remove(score)
score
