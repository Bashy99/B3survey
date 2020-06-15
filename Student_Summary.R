setwd("/Users/adityaghosh/Desktop/")

Studfull = read.csv("Survey-S.csv", header=T)

x = table(Studfull[,4])
pie(x, col=rainbow(length(x)), main="Course", radius=1, clockwise=T)

# Pie chart of Course with Year: (Better)
x = table(paste(Studfull[,4], Studfull[,5]))
pie(x, col=rainbow(length(x)), main="Course (with year)", radius=1, clockwise=T)

# Barplot Person who is surveying
Person = Studfull[,"Person.who.is.surveying"]
x <- barplot(table(Person),main="Person who is surveying (Student Data)", ylab="Freqency", xaxt="n", col="peachpuff")
labs <- names(table(Person))
text(cex=1, x=x, y=2.7, labs, xpd=T, srt=90)

# Barplot Person who is surveying (Sorted)
Person = Studfull[,"Person.who.is.surveying"]
x <- barplot(sort(table(Person)),main="Person who is surveying (Student Data)", ylab="Freqency", xaxt="n", col="peachpuff")
labs <- names(sort(table(Person)))
text(cex=1, x=x, y=2.7, labs, xpd=T, srt=90)