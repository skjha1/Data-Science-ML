#webscrapping
link<-"https://www.imdb.com/search/title/?groups=top_250&sort=user_rating"
library(robotstxt)
path<-paths_allowed(link)
library(rvest)
web<-read_html(link)
library(dplyr)
Name<-web%>%html_nodes(".lister-item-header a")%>%html_text()
year<-web%>%html_nodes(".text-muted.unbold")%>%html_text()
duration<-web%>%html_nodes(".runtime")%>%html_text()
rating<-web%>%html_nodes(".ratings-imdb-rating strong")%>%html_text()
imdb.ratings<-data.frame(Name,year,duration,rating)
View(imdb.ratings)
dim(imdb.ratings)
summary(imdb.ratings)
str(imdb.ratings)
imdb.ratings$Name<-as.character(imdb.ratings$Name)
str(imdb.ratings)
imdb.ratings$year <-gsub("\\(|\\)", "", imdb.ratings$year)
View(imdb.ratings)
imdb.ratings$year<-as.numeric(imdb.ratings$year)
imdb.ratings$duration<-gsub("min","",imdb.ratings$duration)
View(imdb.ratings)
imdb.ratings$duration<-as.numeric(imdb.ratings$duration)
imdb.ratings$rating<-as.numeric(as.character(imdb.ratings$rating))
str(imdb.ratings)
# We used selector Gadget for taking data other than tabular 
imdb.ratings$rating<-as.numeric(as.character(imdb.ratings$rating))
str(imdb.ratings)
imdb.ratings$rank<-c(1:50)
imdb.ratings<-imdb.ratings[c("rank","Name","year","duration","rating")]
View(imdb.ratings)
set.seed(123)
imdb.ratings$gross_dollars<-runif(50,min = 10000000,max=100000000)
View(imdb.ratings)
imdb.ratings$Watch_list<-imdb.ratings$rating>8.6
View(imdb.ratings)
str(imdb.ratings)
imdb.ratings$Watch_list<-as.factor(imdb.ratings$Watch_list)
#Missing values
imdb.ratings[1,6]<-NA
imdb.ratings[8,6]<-NA
imdb.ratings[15,6]<-NA
imdb.ratings[30,6]<-NA
