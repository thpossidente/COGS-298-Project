library("rvest")
library(dplyr)
team.names <- read.csv("Data/teams.csv")
url <- 'https://www.basketball-reference.com/leagues/NBA_2018_games.html'
session <- html_session(url)

main.table <- data.frame(Minutes=integer(), FG=integer(), FGA=integer(), FGP=double(), ThreePoint=integer(),
                         ThreePointA=integer(), ThreePointP=double(), FT=integer(), FTA=integer(),
                         FTP=double(), ORB = integer(), DRB=integer(), TRB=integer(), AST = integer(),
                         STL=integer(), BLK=integer(), TOV=integer(), PF=integer(), PTS=integer())



for (i in 1:104) {
  game.link <- follow_link(session, css = paste("tr:nth-child(", i, ") .center a"))
  
  team1.name <- team.names$Team1[[i]]
  
  team1 <- game.link %>% html_nodes(paste("#all_box_",team1.name,"_basic h2", sep="")) %>% html_text()
  
  table1 <- game.link %>% html_nodes(paste("#box_",team1.name,"_basic tfoot .right", sep="")) %>% html_text()
  table1.df <- table1 %>% as.data.frame()
  
  names(table1.df) = c(team1)
  
  team2.name <- team.names$Team2[[i]]
  
  team2 <- game.link %>% html_nodes(paste("#all_box_",team2.name,"_basic h2", sep="")) %>% html_text()
  
  table2 <- game.link %>% html_nodes(paste("#box_", team2.name, "_basic tfoot .right", sep="")) %>% html_text()
  table2.df <- table2 %>% as.data.frame()
  
  names(table2.df) = c(team2)
  
  table1.df = data.frame(t(table1.df))
  colnames(table1.df) = c("Minutes", "FG", "FGA", "FGP", "ThreePoint",
                       "ThreePointA", "ThreePointP", "FT", "FTA",
                       "FTP", "ORB", "DRB", "TRB", "AST",
                       "STL", "BLK", "TOV", "PF", "PTS", "Blank")
  table1.df = subset(table1.df, select=-c(Blank))
  
  table2.df = data.frame(t(table2.df))
  colnames(table2.df) = c("Minutes", "FG",  "FGA", "FGP", "ThreePoint",
                          "ThreePointA", "ThreePointP", "FT", "FTA",
                          "FTP", "ORB", "DRB", "TRB", "AST",
                          "STL", "BLK", "TOV", "PF", "PTS", "Blank")
  table2.df = subset(table2.df, select=-c(Blank))
  
  main.table = rbind(main.table, table1.df)
  main.table = rbind(main.table, table2.df)
  
  session.return <- html_session(url)
  
}

main.table = subset(main.table, select=-c(Minutes))

write.csv(main.table, "Data/GameDataOctober.csv")
