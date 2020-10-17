install.packages("robotstxt")
install.packages("rvest")
library("robotstxt")
library("robotstxt")
Path<-paths_allowed("https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population")
# Step:2 Read the website
library(rvest)
My_html<-read_html("https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population")
My_table<-html_nodes(My_html,"table")
Population_scrap<-html_table(My_table)[[1]]
View(Population_scrap)
Population<-Population_scrap[,1:4]
View(Population)
names(Population)=c("Rank","Country","Population","World_share")
View(Population)
write.csv(Population,"My_first site.csv")