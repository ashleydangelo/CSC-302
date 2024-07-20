df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))

aggregate(df1$Sales, by=list(df1$State), FUN=sum)

library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))
library(dplyr)
df2 = df[is.na(df["Dopamine"])==F, ]
head(df2)
#It first aggregated the data into group 1 and x. Then you run the next line and it labels it as state and sum_sales. It also created a 4x2 table.
library(tidyverse)
median_c4 <- median(df2$c4.OH.Pro, na.rm = TRUE)
df2 <- df2 %>%
  mutate(c4.OH.Pro = ifelse(is.na(c4.OH.Pro), median_c4, c4.OH.Pro))
head(df2)
install.packages("tidyverse")
df = read.csv("C:\Users\walke\OneDrive\WorldCupMatches.csv", header = T)
head(df)
Summary(df)



df = read.csv("C:/Users/walke/OneDrive/WorldCupMatches.csv", header=T)
head(df)
summary(df)
nrow(df)
ncol(df)
summary(df)

unique_cities <- unique(df$City)
length(unique_cities)
mean(df$Attendance, na.rm - TRUE)
mean(df$Attendance, na.rm = TRUE)
aggregate(df$Home.Team.Goals, by=list(df$Home.Team.Name), FUN=sum)
df %>%
  group_by(Year) %>%
  summarise(avg_attendees = mean(Attendance))

df = read.csv("C:\Users\walke\Downloads\metabolite.csv", header = T)
df = read.csv("C:/Users/walke/OneDrive/metabolite.csv", header=T)

df %>% count(Label=="Alzheimer")
sum(is.na(df))
df2 = df[is.na(df["Dopamine"])==F, ]
head(df2)


library(tidyverse)
median_c4 <- median(df2$c4.OH.Pro, na.rm = TRUE)
df2 <- df2 %>%
  mutate(c4.OH.Pro = ifelse(is.na(c4.OH.Pro), median_c4, c4.OH.Pro))
head(df2)

##When we ran aggregate(df1$Sales, by=list(df1$State), FUN=sum), it aggregates the data together creating a 4x2 table. When we run df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales)) it categorizes the table with the correct column headers.
