3+5
12/7
3*5
1/20*53
1/20*53
(1/20)*53
09854089409830984*0893420983240983240
x<-3+5
x <- 5
x<-3+5
hectare
hectare <- 5
acre <- 2.47*hectare
acre <- hectare / 2.47
acre <- 2.47*hectare
hectare <- 10
acre <- hectare * 2.47
round(3.14159)
round(3.14159, digits = 2)
?
? digits
?round
hectare <- 12
acre <- hectare*2.47
acre <- hectare*2.47
acre <-
#Vector
c(3,4,5,7
#Vector
c(3,4,5,7)

#Vector
members <- c(3,4,5,7)
sqrt(members)
sum(members)
mean(members)
median(members)
c("hello", "goodbye", "yo")
words <- c("hello", "goodbye", "yo")
class(members)
round(words)
class(hectare)
class(12L)
sum(c(T,F,T,T))
x <-
length(x)-sum(x)
length(x)-sum(x)
sum(c(T,F,T,T))
length(x)-sum(x)
length(x)-sum(x)
\
sum(c(T,F,T,T)
install.packages("tidyverse")

# Packages
library(tidyverse)
read_csv("dataraw/correspondnece-data-1585.csv")
read_csv("dataraw/correspondence-data-1585.csv")
dfread_csv("dataraw/correspondence-data-1585.csv")
df <- read_csv("dataraw/correspondence-data-1585.csv")
View(df)
glimpse(df)
nrow(df)
ncol(df)
summary(df)
summary(df)
df <- read.csv("dataraw/DATASHEET.csv")
df <- read.csv("dataraw/DATASHEET.csv")
View(df)
View(df)
df
df <- read.csv("dataraw/DATASHEET.csv")
View(df)
View(df)
install.packages("here")
library(here)

##ImportData##
#Packages
library(tidyverse)
library(here)
library(here)
read_csv(
here("Desktop","SAFI_clean.csv"),
na="NULL"
)
read_csv(
here("Desktop","SAFI_clean.csv"),
na="NULL"
)
read_csv(
here("SAFI_clean.csv"),
na="NULL"
)
interviews <- read_csv(
here("SAFI_clean.csv"),
na="NULL"
)
View(interviews)
glimpse(interviews)
interviews(summary)
View(interviews)
summary
summary(interviews)
glipmse(interviews)
glimpse(interviews)

#select: columns
select(interviews, key_ID, village, no_membrs)
select(interviews, -liv_count)
(interviews, key_ID:rooms)
(interviews, key_ID:rooms)
select(interviews, key_ID: rooms)

#filter: rows
filter(interviews, village == "Chirodzo" )
chirodzo <- filter(interviews, village == "Chirodzo")
chirodzo <- select(chirodzo, -village)
filter(interviews, village== "Chirodzo", village== "Ruaca")
filter(interviews, village== "Chirodzo", rooms > 1)
filter(interviews, village== "Chirodzo" | village= "Ruaca")
filter(interviews, village== "Chirodzo" | village== "Ruaca")

#Nested functions
select(filter(inteviews, village == "Chirodzo"), -village)
#Nested functions
select(filter(interviews, village == "Chirodzo"), -village)
#Pipe
interviews |>
#Pipe
interviews %>%
filter(village == "Chirodzo") %>%
select(-village)
#Pipe
interviews %>%
filter(village == "Chirodzo") %>%
select(-village)

#Mutate: Create New Columns
interviews %>%
mutate(per_room = no_membrs / rooms) %>%
select (village, no_membrs, rooms, per_room)
interviews
interviews %>% mutate(interview_date = as_date(interview_date))
interviews <- interviews %>% mutate(interview_date = as_date(interview_date))
#Summarise
interviews %>%
summarise(mean_membrs = mean(no_membrs))
no_membrs <- interviews$no_membrs
mean(no_membrs)
interviews %>%
group_by(village) %>%
summarise(mean_membrs = mean(no_membrs))
interview %>%
summarise(mean_membrs = mean(no_membrs), .by = village)
interview %>%
summarise(mean_membrs = mean(no_membrs), .by = village)
interviews %>%
summarise(mean_membrs = mean(no_membrs), .by = village)
interviews %>%
summarise(mean_membrs = mean(no_membrs), .by = c(village, memb_assoc))
interviews %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc))
interviews %>%
summarise(n = n(), .by = village)
interviews %>%
filter(is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc))
interviews %>%
filter(!is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc))
arrange(n) # ascending
arrange(n)
arrange(n))
interviews %>%
filter(is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc)) %>%
arrange(n))
interviews %>%
filter(is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc)) %>%
arrange(n))
interviews %>%
filter(is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc)) %>%
arrange(n)
interviews %>%
filter(is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc)) %>%
arrange(desc(n))
interviews %>%
filter(is.na(memb_assoc)) %>%
summarise(mean_membrs = mean(no_membrs),
min_membrs = min(no_membrs),
n = n(),
.by = c(village, memb_assoc)) %>%
arrange(n)
