library(dplyr)

team.data <- read.csv("Data/GameData.csv")
winning.team <- data.frame("Win/Loss"=integer())

i=1

while (i < (nrow(team.data))) {
  first.team.score <- team.data$PTS[i];
  second.team.score <- team.data$PTS[i+1];
  
  if (first.team.score > second.team.score) {
    new.row <- data.frame("Win/Loss"=1);
  }
  else {
    new.row <- data.frame("Win/Loss"=0);
  }
  
  winning.team <- rbind(winning.team, new.row)
  i = i+2;
}

winning.team <- data.frame(winning.team)


team.games.played <- data.frame(Team1=character(), GameNumberT1=integer(), Team2=character(), GameNumberT2=integer())

i=1;

while (i < nrow(team.data)) {
  string1 <- team.data$X[i];
  string2 <- team.data$X[i+1];
  
  name1 <- sub("[(].*", "", string1)
  num1 <- gsub(".*[(]([^.]+)[)].*", "\\1", string1);
  win1 <- sub("-.*", "", num1)
  loss1 <- sub(".*-", "", num1)
  games1 <- (as.numeric(win1) + as.numeric(loss1))
  
  name2 <- sub("[(].*", "", string2)
  num2 <- gsub(".*[(]([^.]+)[)].*", "\\1", string2);
  win2 <- sub("-.*", "", num2)
  loss2 <- sub(".*-", "", num2)
  games2 <- (as.numeric(win2) + as.numeric(loss2))
  
  new.row = data.frame(Team1=name1, GameNumberT1=games1, Team2=name2, GameNumberT2=games2)
  
  team.games.played <- rbind(team.games.played, new.row)
  
  i = i+2;
}

boston <- read.csv("Data/CulmStats/boston.csv")
cleveland <- read.csv("Data/CulmStats/cleveland.csv")
houston <- read.csv("Data/CulmStats/houston.csv")
golden <- read.csv("Data/CulmStats/golden.csv")
milwaukee <- read.csv("Data/CulmStats/milwaukee.csv")
atlanta <- read.csv("Data/CulmStats/atlanta.csv")
dallas <- read.csv("Data/CulmStats/dallas.csv")
charlotte <- read.csv("Data/CulmStats/charlotte.csv")
detroit <- read.csv("Data/CulmStats/detroit.csv")
brooklyn <- read.csv("Data/CulmStats/brooklyn.csv")
indiana <- read.csv("Data/CulmStats/indiana.csv")
orleans <- read.csv("Data/CulmStats/orleans.csv")
memphis <- read.csv("Data/CulmStats/memphis.csv")
miami <- read.csv("Data/CulmStats/miami.csv")
orlando <- read.csv("Data/CulmStats/orlando.csv")
portland <- read.csv("Data/CulmStats/portland.csv")
phoenix <- read.csv("Data/CulmStats/phoenix.csv")
houston <- read.csv("Data/CulmStats/houston.csv")
sacramento <- read.csv("Data/CulmStats/sacramento.csv")
san.antonio <- read.csv("Data/CulmStats/san_antonio.csv")
minnesota <- read.csv("Data/CulmStats/minnesota.csv")
denver <- read.csv("Data/CulmStats/denver.csv")
utah <- read.csv("Data/CulmStats/utah.csv")
philly <- read.csv("Data/CulmStats/philly.csv")
knicks <- read.csv("Data/CulmStats/knicks.csv")
washington <- read.csv("Data/CulmStats/washington.csv")
clippers <- read.csv("Data/CulmStats/clippers.csv")
lakers <- read.csv("Data/CulmStats/lakers.csv")
oklahoma <- read.csv("Data/CulmStats/oklahoma.csv")
toronto <- read.csv("Data/CulmStats/toronto.csv")

game.scores <- data.frame(X=integer(), ByGame=integer(), FGPerGame=double(), FGAPerGame=double(), FGP=double(), ThreePointPerGame=double(), 
                          ThreePointAPerGame=double(), ThreePointP=double(), FTPerGame=double(), FTAPerGame=double(),
                          FTP=double(), ORBPerGame =double(), DRBPerGame=double(), TRBPerGame=double(), ASTPerGame = double(),
                          STLPerGame=double(), BLKPerGame=double(), TOVPerGame=double(), PFPerGame=double(), PTSPerGame=double(),
                          X=integer(), ByGame=integer(), FGPerGame=double(), FGAPerGame=double(), FGP=double(), ThreePointPerGame=double(), 
                          ThreePointAPerGame=double(), ThreePointP=double(), FTPerGame=double(), FTAPerGame=double(),
                          FTP=double(), ORBPerGame =double(), DRBPerGame=double(), TRBPerGame=double(), ASTPerGame = double(),
                          STLPerGame=double(), BLKPerGame=double(), TOVPerGame=double(), PFPerGame=double(), PTSPerGame=double())


check_team <- function(name, number) {
  if (name == "Boston Celtics ") {
    return(as.data.frame(boston[number,]))
  }
  else if ("Cleveland Caveliers " == name) {
    return(as.data.frame(cleveland[number,]))
  }
  else if ("Houston Rockets " == name) {
    return(as.data.frame(houston[number,]))
  }
  else if ("Golden State Warriors " == name) {
    return(as.data.frame(golden[number,]))
  }
  else if ("Milwaukee Bucks " == name) {
    return(as.data.frame(milwaukee[number,]))
  }
  else if ("Atlanta Hawks " == name) {
    return(as.data.frame(atlanta[number,]))
  }
  else if ("Dallas Mavericks " == name) {
    return(as.data.frame(dallas[number,]))
  }
  else if ("Charlotte Hornets " == name) {
    return(as.data.frame(charlotte[number,]))
  }
  else if ("Detroit Pistons " == name) {
    return(as.data.frame(detroit[number,]))
  }
  else if ("Brooklyn Nets " == name) {
    return(as.data.frame(brooklyn[number,]))
  }
  else if ("Indiana Pacers " == name) {
    return(as.data.frame(indiana[number,]))
  }
  else if ("New Orleans Pelicans " == name) {
    return(as.data.frame(orleans[number,]))
  }
  else if ("Memphis Grizzlies " == name) {
    return(as.data.frame(memphis[number,]))
  }
  else if ("Miami Heat " == name) {
    return(as.data.frame(miami[number,]))
  }
  else if ("Orlando Magic "== name) {
    return(as.data.frame(orlando[number,]))
  }
  else if ("Portland Trail Blazers " == name) {
    return(as.data.frame(portland[number,]))
  }
  else if ("Phoenix Suns "==name) {
    return(as.data.frame(phoenix[number,]))
  }
  else if ("Houston Rockets " == name) {
    return(as.data.frame(houston[number,]))
  }
  else if ("Sacramento Kings " == name) {
    return(as.data.frame(sacramento[number,]))
  }
  else if ("San Antonio Spurs " == name) {
    return(as.data.frame(san.antonio[number,]))
  }
  else if ("Minnesota Timberwolves " == name) {
    return(as.data.frame(minnesota[number,]))
  }
  else if ("Denver Nuggets "== name) {
    return(as.data.frame(denver[number,]))
  }
  else if ("Utah Jazz " == name) {
    return(as.data.frame(utah[number,]))
  }
  else if ("Philadelphia 76ers " == name) {
    return(as.data.frame(philly[number,]))
  }
  else if ("New York Knicks " == name) {
    return(as.data.frame(knicks[number,]))
  }
  else if ("Washington Wizards " == name) {
    return(as.data.frame(washington[number,]))
  }
  else if ("Los Angeles Clippers " == name) {
    return(as.data.frame(clippers[number,]))
  }
  else if ("Los Angeles Lakers "==  name) {
    return(as.data.frame(lakers[number,]))
  }
  else if ("Oklahoma City Thunder " == name) {
    return(as.data.frame(oklahoma[number,]))
  }
  else {
    return(as.data.frame(toronto[number,]))
  }
  
}



for (i in 1:nrow(team.games.played)) {
  team1 <- team.games.played$Team1[i];
  games1 <- team.games.played$GameNumberT1[i];
  
  

  
  team2 <- team.games.played$Team2[i];
  games2 <- team.games.played$GameNumberT2[i];

  team1.game.info <- check_team(team1, games1);
  team2.game.info <- check_team(team2, games2);
    
  new.row <- cbind(team1.game.info, team2.game.info);
  game.scores <- rbind(game.scores, new.row)
  
  
  
}

game.scores <- game.scores[-c(1, 2, 21, 22)]

all.data <- cbind(game.scores, winning.team)

all.data <- subset(all.data, FGPerGame>0 & FGPerGame.1>0)

game.scores <- all.data[-c(37)]
winning.team <- all.data[c("Win.Loss")]

winning.team <- as.data.frame(t(winning.team))
game.scores <- as.data.frame(t(game.scores))

write.csv(game.scores, "Data/2017SeasonStats.csv")
write.csv(winning.team, "Data/2017Wins.csv")
