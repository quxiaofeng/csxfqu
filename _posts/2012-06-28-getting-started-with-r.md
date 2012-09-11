---
layout: post
category : blog
tags : [reading note, R]
---
    
    
### 1. Downloading and Installing R

+ R Studio
+ R Language  

### 2. Getting Help on a Function

{% highlight rout %}
help(func)
?(func)
args(func)
example(func)
{% endhighlight %}

### 3. Viewing the Supplied Documentation

{% highlight rout %}
help.start()
{% endhighlight %}

### 4. Searching the Web for Help

+ RSiteSearch("key phrase")
+ <http://rseek.org>
+ <http://stackoverflow.com>
+ <http://stats.stackexchange.com>

### 5. Reading Tabular Datafiles

{% highlight rout %}
dfrm <- read.table("filename.txt", sep=":")    
print dftm    
{% endhighlight %}

### 6. Reading from CSV Files

{% highlight rout %}
table <- read.csv("filename", header=FALSE)
{% endhighlight %}

### 7. Creating a Vector

{% highlight rout %}
v1 <- c(1,2,3)
v2 <- c("A","B","C")
mode(c(3.1415, "foo"))
{% endhighlight %}

### 8. Computing Basic Statistics

{% highlight rout %}
mean(x)
median(x)
sd(x)
var(x)
cor(x,y)
cov(x,y)
{% endhighlight %}

### 9. Initializing a Data Frame form Column Data

{% highlight rout %}
dfrm <- data.frame(v1, v2, v3, f1, f2)
dfrm <- as.data.frame(list.of.vectors)
dfrm <- data.frame(pred1, pred2, pred3, resp)
dfrm <- data.frame(p1=pred1, p2=pred2, p3=pred3, r=resp)
{% endhighlight %}

### 10. Selecting Data Frame Columns by Position

{% highlight rout %}
dfrm[[n]]
dfrm[n]
dfrm[c(n_1, n_2, ..., n_k)]
dfrm[, n]
dfrm[, c(n_1, n_2, ..., n_k)]
dfrm[, vec, drop=FALSE]
{% endhighlight %}

### 11. Selecting Data Frame Columns by Name

{% highlight rout %}
dfrm[[anme]]
dfrm$name
dfrm["name"]
dfrm[c("name_1", "name_2", ..., "name_k")]
dfrm[, "name"]
dfrm[, c("name_1", "name_2", ..., "name_k")]
{% endhighlight %}

### 12. Forming a Confidence Interval for a Mean

{% highlight rout %}
x <- rnorm(50, mean=100, sd=50)
t.test(x)
t.test(x, conf.level=0.99)
{% endhighlight %}


### 13. Forming a Confidence Interval for a Proportion

{% highlight rout %}
prop.test(n, x)
prop.test(6, 9)
prop.test(n, x,,p, conf.level=0.99) # 99% confidence level
{% endhighlight %}


### 14. Comparing the Means of Two Samples

{% highlight rout %}
t.test(x, y)
t.test(x, y, paired=TRUE)
{% endhighlight %}

### 15. Testing a Correlation for Significance

{% highlight rout %}
cor.test(x, y)
cor.test(x, y, method="Spearman")
{% endhighlight %}


### 16. Creating a Scatter Plot

{% highlight rout %}
plot(x, y)
plot(dfrm)
{% endhighlight %}


### 17. Creating a Bar Chart 

{% highlight rout %}
barplot(c(height1, height2, height3))

barplot(heights,
        main="Mean Temp. by Month"
        names.arg=c("May", "Jun", "July", "Aug", "Sep"),
        ylab="Temp (deg. F)")
{% endhighlight %}


### 18. Creating a Box Plot

{% highlight rout %}
boxplot(x)
{% endhighlight %}


### 19. Creating a Histogram

{% highlight rout %}
data(Cars93, package="MASS")
hist(Cars93$MPG.city)
hist(Cars93$MPG.city, 20)
hist(Cars93$MPG.city, 20, main="City MPG (1993)", xlab="MPG")
{% endhighlight %}


### 20. Performing Simple Linear Regression

{% highlight rout %}
lm(y ~ x)
lm(y ~ x, data=dfrm) # Take x and y from dfrm
{% endhighlight %}


### 21. Performing Multiple Linear Regression

{% highlight rout %}
y=c(6.584519, 6.425215, 7.830578, 2.757777, 5.794566, 7.314611, 2.533638, 8.696910, 6.304464, 8.095094)
u=c(0.79939065, -2.31338537, 1.71736899, 1.27652888, 0.39643488, 1.82247760, -1.34186107, 0.75946803, 0.92000133, 1.02341093)
v=c(2.7971413, 2.7836201, 2.7570401, 0.4191765, 2.3785468, 1.8291302, 2.3472593, 3.4028180, 2.0654513, 2.6729252)
w=c(4.366557, 4.515084, 3.865557, 2.547935, 3.265971, 4.518522, 2.570884, 4.442560, 2.835248, 3.868573)
lm(y ~ u + v + w)
lm(y ~ u + v + w, data=dfrm)
{% endhighlight %}


### 22. Getting Regression Statistics

{% highlight rout %}
y=c(6.584519, 6.425215, 7.830578, 2.757777, 5.794566, 7.314611, 2.533638, 8.696910, 6.304464, 8.095094)
u=c(0.79939065, -2.31338537, 1.71736899, 1.27652888, 0.39643488, 1.82247760, -1.34186107, 0.75946803, 0.92000133, 1.02341093)
v=c(2.7971413, 2.7836201, 2.7570401, 0.4191765, 2.3785468, 1.8291302, 2.3472593, 3.4028180, 2.0654513, 2.6729252)
w=c(4.366557, 4.515084, 3.865557, 2.547935, 3.265971, 4.518522, 2.570884, 4.442560, 2.835248, 3.868573)
m <- lm(y ~ u + v + w)
summary(m)
anova(m)
coefficients(m)
coef(m)
confint(m)
deviance(m)
effects(m)
fitted(m)
residuals(m)
resid(m)
vcov(m)
{% endhighlight %}

### 23. Diagnosing a Linear Regression

{% highlight rout %}
m <- lm(y ~ x)
plot(m)

library(car)
outlier.test(m)
{% endhighlight %}

### 24. Predicting New Values

{% highlight rout %}
m <- lm(y ~ u + v + w)
preds <- data.frame(u=3.1, v=4.0, w=5.5)
predict(m, newdata=preds)
preds <- data.frame(
        u=c(3.0, 3.1, 3.2, 3.3),
        v=c(3.9, 4.0, 4.1, 4.2),
        w=c(5.3, 5.5, 5,7, 5.9) )
predict(m, newdata=preds)
{% endhighlight %}

### 25. Accessing the Functions in a Package

{% highlight rout %}
library(packagename)
library(MASS)
lda(f ~ x + y)
detach(package:MASS)
{% endhighlight %}

### Chinese Translation

+ Chen Gang has translated [some sections](http://gossipcoder.com/?tag=r%E5%85%A5%E9%97%A825%E6%8B%9B) of this book.
+ Yu Guangchuang has recreated [the figures](http://ygc.name/2011/08/17/ggplot2-version-figures-25-recipes-started-r/) of this book
