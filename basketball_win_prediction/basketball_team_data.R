library(dplyr)

team.data <- read.csv("Data/GameData.csv")

##Create datasets for each team
boston <- team.data[grep("Boston", team.data[["X"]]),]
cleveland <- team.data[grep("Cleveland", team.data[["X"]]),]
houston <- team.data[grep("Houston", team.data[["X"]]),]
golden <- team.data[grep("Golden", team.data[["X"]]),]
milwaukee <- team.data[grep("Milwaukee", team.data[["X"]]),]
atlanta <- team.data[grep("Atlanta", team.data[["X"]]),]
dallas <- team.data[grep("Dallas", team.data[["X"]]),]
charlotte <- team.data[grep("Charlotte", team.data[["X"]]),]
detroit <- team.data[grep("Detroit", team.data[["X"]]),]
brooklyn <- team.data[grep("Brooklyn", team.data[["X"]]),]
indiana <- team.data[grep("Indiana", team.data[["X"]]),]
orleans <- team.data[grep("New Orleans", team.data[["X"]]),]
memphis <- team.data[grep("Memphis", team.data[["X"]]),]
miami <- team.data[grep("Miami", team.data[["X"]]),]
orlando <- team.data[grep("Orlando", team.data[["X"]]),]
portland <- team.data[grep("Portland", team.data[["X"]]),]
phoenix <- team.data[grep("Phoenix", team.data[["X"]]),]
houston <- team.data[grep("Houston", team.data[["X"]]),]
sacramento <- team.data[grep("Sacramento", team.data[["X"]]),]
san.antonio <- team.data[grep("San Antonio", team.data[["X"]]),]
minnesota <- team.data[grep("Minnesota", team.data[["X"]]),]
denver <- team.data[grep("Denver", team.data[["X"]]),]
utah <- team.data[grep("Utah", team.data[["X"]]),]
philly <- team.data[grep("Phila", team.data[["X"]]),]
knicks <- team.data[grep("New York", team.data[["X"]]),]
washington <- team.data[grep("Washington", team.data[["X"]]),]
clippers <- team.data[grep("Clippers", team.data[["X"]]),]
lakers <- team.data[grep("Lakers", team.data[["X"]]),]
oklahoma <- team.data[grep("Oklahoma", team.data[["X"]]),]
toronto <- team.data[grep("Toronto", team.data[["X"]]),]


boston_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(boston)) {
  ByGame=i;
  TotalFG=boston_culm_stats$TotalFG[i-1] + boston$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=boston_culm_stats$TotalFGA[i-1] + boston$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=boston_culm_stats$TotalThreePoint[i-1] + boston$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=boston_culm_stats$TotalThreePA[i-1] + boston$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=boston_culm_stats$TotalFT[i-1] + boston$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = boston_culm_stats$TotalFTA[i-1] + boston$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=boston_culm_stats$ORB[i-1] + boston$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=boston_culm_stats$DRB[i-1] + boston$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=boston_culm_stats$TotalAssists[i-1] + boston$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=boston_culm_stats$TotalSTL[i-1] + boston$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=boston_culm_stats$TotalBLK[i-1] + boston$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=boston_culm_stats$TotalTOV[i-1] + boston$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=boston_culm_stats$TotalPF[i-1] + boston$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=boston_culm_stats$TotalPTS[i-1] + boston$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  boston_culm_stats <- rbind(boston_culm_stats, new.row)
}

boston_culm_stats = subset(boston_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(boston_culm_stats, "Data/CulmStats/boston.csv");

cleveland_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(cleveland)) {
  ByGame=i;
  TotalFG=cleveland_culm_stats$TotalFG[i-1] + cleveland$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=cleveland_culm_stats$TotalFGA[i-1] + cleveland$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=cleveland_culm_stats$TotalThreePoint[i-1] + cleveland$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=cleveland_culm_stats$TotalThreePA[i-1] + cleveland$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=cleveland_culm_stats$TotalFT[i-1] + cleveland$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = cleveland_culm_stats$TotalFTA[i-1] + cleveland$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=cleveland_culm_stats$ORB[i-1] + cleveland$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=cleveland_culm_stats$DRB[i-1] + cleveland$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=cleveland_culm_stats$TotalAssists[i-1] + cleveland$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=cleveland_culm_stats$TotalSTL[i-1] + cleveland$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=cleveland_culm_stats$TotalBLK[i-1] + cleveland$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=cleveland_culm_stats$TotalTOV[i-1] + cleveland$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=cleveland_culm_stats$TotalPF[i-1] + cleveland$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=cleveland_culm_stats$TotalPTS[i-1] + cleveland$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  cleveland_culm_stats <- rbind(cleveland_culm_stats, new.row)
}

cleveland_culm_stats = subset(cleveland_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(cleveland_culm_stats, "Data/CulmStats/cleveland.csv");

houston_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                   ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                   FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                   TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(houston)) {
  ByGame=i;
  TotalFG=houston_culm_stats$TotalFG[i-1] + houston$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=houston_culm_stats$TotalFGA[i-1] + houston$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=houston_culm_stats$TotalThreePoint[i-1] + houston$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=houston_culm_stats$TotalThreePA[i-1] + houston$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=houston_culm_stats$TotalFT[i-1] + houston$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = houston_culm_stats$TotalFTA[i-1] + houston$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=houston_culm_stats$ORB[i-1] + houston$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=houston_culm_stats$DRB[i-1] + houston$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=houston_culm_stats$TotalAssists[i-1] + houston$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=houston_culm_stats$TotalSTL[i-1] + houston$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=houston_culm_stats$TotalBLK[i-1] + houston$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=houston_culm_stats$TotalTOV[i-1] + houston$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=houston_culm_stats$TotalPF[i-1] + houston$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=houston_culm_stats$TotalPTS[i-1] + houston$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  houston_culm_stats <- rbind(houston_culm_stats, new.row)
}

houston_culm_stats = subset(houston_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(houston_culm_stats, "Data/CulmStats/houston.csv");

golden_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(golden)) {
  ByGame=i;
  TotalFG=golden_culm_stats$TotalFG[i-1] + golden$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=golden_culm_stats$TotalFGA[i-1] + golden$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=golden_culm_stats$TotalThreePoint[i-1] + golden$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=golden_culm_stats$TotalThreePA[i-1] + golden$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=golden_culm_stats$TotalFT[i-1] + golden$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = golden_culm_stats$TotalFTA[i-1] + golden$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=golden_culm_stats$ORB[i-1] + golden$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=golden_culm_stats$DRB[i-1] + golden$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=golden_culm_stats$TotalAssists[i-1] + golden$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=golden_culm_stats$TotalSTL[i-1] + golden$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=golden_culm_stats$TotalBLK[i-1] + golden$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=golden_culm_stats$TotalTOV[i-1] + golden$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=golden_culm_stats$TotalPF[i-1] + golden$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=golden_culm_stats$TotalPTS[i-1] + golden$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  golden_culm_stats <- rbind(golden_culm_stats, new.row)
}

golden_culm_stats = subset(golden_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(golden_culm_stats, "Data/CulmStats/golden.csv");

milwaukee_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(milwaukee)) {
  ByGame=i;
  TotalFG=milwaukee_culm_stats$TotalFG[i-1] + milwaukee$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=milwaukee_culm_stats$TotalFGA[i-1] + milwaukee$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=milwaukee_culm_stats$TotalThreePoint[i-1] + milwaukee$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=milwaukee_culm_stats$TotalThreePA[i-1] + milwaukee$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=milwaukee_culm_stats$TotalFT[i-1] + milwaukee$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = milwaukee_culm_stats$TotalFTA[i-1] + milwaukee$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=milwaukee_culm_stats$ORB[i-1] + milwaukee$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=milwaukee_culm_stats$DRB[i-1] + milwaukee$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=milwaukee_culm_stats$TotalAssists[i-1] + milwaukee$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=milwaukee_culm_stats$TotalSTL[i-1] + milwaukee$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=milwaukee_culm_stats$TotalBLK[i-1] + milwaukee$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=milwaukee_culm_stats$TotalTOV[i-1] + milwaukee$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=milwaukee_culm_stats$TotalPF[i-1] + milwaukee$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=milwaukee_culm_stats$TotalPTS[i-1] + milwaukee$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  milwaukee_culm_stats <- rbind(milwaukee_culm_stats, new.row)
}

milwaukee_culm_stats = subset(milwaukee_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(milwaukee_culm_stats, "Data/CulmStats/milwaukee.csv");

atlanta_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                   ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                   FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                   TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(atlanta)) {
  ByGame=i;
  TotalFG=atlanta_culm_stats$TotalFG[i-1] + atlanta$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=atlanta_culm_stats$TotalFGA[i-1] + atlanta$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=atlanta_culm_stats$TotalThreePoint[i-1] + atlanta$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=atlanta_culm_stats$TotalThreePA[i-1] + atlanta$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=atlanta_culm_stats$TotalFT[i-1] + atlanta$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = atlanta_culm_stats$TotalFTA[i-1] + atlanta$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=atlanta_culm_stats$ORB[i-1] + atlanta$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=atlanta_culm_stats$DRB[i-1] + atlanta$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=atlanta_culm_stats$TotalAssists[i-1] + atlanta$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=atlanta_culm_stats$TotalSTL[i-1] + atlanta$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=atlanta_culm_stats$TotalBLK[i-1] + atlanta$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=atlanta_culm_stats$TotalTOV[i-1] + atlanta$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=atlanta_culm_stats$TotalPF[i-1] + atlanta$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=atlanta_culm_stats$TotalPTS[i-1] + atlanta$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  atlanta_culm_stats <- rbind(atlanta_culm_stats, new.row)
}

atlanta_culm_stats = subset(atlanta_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(atlanta_culm_stats, "Data/CulmStats/atlanta.csv");

dallas_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(dallas)) {
  ByGame=i;
  TotalFG=dallas_culm_stats$TotalFG[i-1] + dallas$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=dallas_culm_stats$TotalFGA[i-1] + dallas$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=dallas_culm_stats$TotalThreePoint[i-1] + dallas$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=dallas_culm_stats$TotalThreePA[i-1] + dallas$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=dallas_culm_stats$TotalFT[i-1] + dallas$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = dallas_culm_stats$TotalFTA[i-1] + dallas$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=dallas_culm_stats$ORB[i-1] + dallas$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=dallas_culm_stats$DRB[i-1] + dallas$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=dallas_culm_stats$TotalAssists[i-1] + dallas$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=dallas_culm_stats$TotalSTL[i-1] + dallas$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=dallas_culm_stats$TotalBLK[i-1] + dallas$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=dallas_culm_stats$TotalTOV[i-1] + dallas$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=dallas_culm_stats$TotalPF[i-1] + dallas$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=dallas_culm_stats$TotalPTS[i-1] + dallas$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  dallas_culm_stats <- rbind(dallas_culm_stats, new.row)
}

dallas_culm_stats = subset(dallas_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(dallas_culm_stats, "Data/CulmStats/dallas.csv");

charlotte_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(charlotte)) {
  ByGame=i;
  TotalFG=charlotte_culm_stats$TotalFG[i-1] + charlotte$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=charlotte_culm_stats$TotalFGA[i-1] + charlotte$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=charlotte_culm_stats$TotalThreePoint[i-1] + charlotte$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=charlotte_culm_stats$TotalThreePA[i-1] + charlotte$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=charlotte_culm_stats$TotalFT[i-1] + charlotte$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = charlotte_culm_stats$TotalFTA[i-1] + charlotte$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=charlotte_culm_stats$ORB[i-1] + charlotte$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=charlotte_culm_stats$DRB[i-1] + charlotte$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=charlotte_culm_stats$TotalAssists[i-1] + charlotte$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=charlotte_culm_stats$TotalSTL[i-1] + charlotte$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=charlotte_culm_stats$TotalBLK[i-1] + charlotte$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=charlotte_culm_stats$TotalTOV[i-1] + charlotte$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=charlotte_culm_stats$TotalPF[i-1] + charlotte$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=charlotte_culm_stats$TotalPTS[i-1] + charlotte$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  charlotte_culm_stats <- rbind(charlotte_culm_stats, new.row)
}

charlotte_culm_stats = subset(charlotte_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(charlotte_culm_stats, "Data/CulmStats/charlotte.csv");

detroit_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                   ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                   FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                   TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(detroit)) {
  ByGame=i;
  TotalFG=detroit_culm_stats$TotalFG[i-1] + detroit$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=detroit_culm_stats$TotalFGA[i-1] + detroit$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=detroit_culm_stats$TotalThreePoint[i-1] + detroit$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=detroit_culm_stats$TotalThreePA[i-1] + detroit$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=detroit_culm_stats$TotalFT[i-1] + detroit$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = detroit_culm_stats$TotalFTA[i-1] + detroit$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=detroit_culm_stats$ORB[i-1] + detroit$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=detroit_culm_stats$DRB[i-1] + detroit$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=detroit_culm_stats$TotalAssists[i-1] + detroit$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=detroit_culm_stats$TotalSTL[i-1] + detroit$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=detroit_culm_stats$TotalBLK[i-1] + detroit$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=detroit_culm_stats$TotalTOV[i-1] + detroit$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=detroit_culm_stats$TotalPF[i-1] + detroit$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=detroit_culm_stats$TotalPTS[i-1] + detroit$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  detroit_culm_stats <- rbind(detroit_culm_stats, new.row)
}

detroit_culm_stats = subset(detroit_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(detroit_culm_stats, "Data/CulmStats/detroit.csv");

brooklyn_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(brooklyn)) {
  ByGame=i;
  TotalFG=brooklyn_culm_stats$TotalFG[i-1] + brooklyn$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=brooklyn_culm_stats$TotalFGA[i-1] + brooklyn$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=brooklyn_culm_stats$TotalThreePoint[i-1] + brooklyn$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=brooklyn_culm_stats$TotalThreePA[i-1] + brooklyn$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=brooklyn_culm_stats$TotalFT[i-1] + brooklyn$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = brooklyn_culm_stats$TotalFTA[i-1] + brooklyn$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=brooklyn_culm_stats$ORB[i-1] + brooklyn$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=brooklyn_culm_stats$DRB[i-1] + brooklyn$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=brooklyn_culm_stats$TotalAssists[i-1] + brooklyn$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=brooklyn_culm_stats$TotalSTL[i-1] + brooklyn$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=brooklyn_culm_stats$TotalBLK[i-1] + brooklyn$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=brooklyn_culm_stats$TotalTOV[i-1] + brooklyn$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=brooklyn_culm_stats$TotalPF[i-1] + brooklyn$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=brooklyn_culm_stats$TotalPTS[i-1] + brooklyn$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  brooklyn_culm_stats <- rbind(brooklyn_culm_stats, new.row)
}

brooklyn_culm_stats = subset(brooklyn_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(brooklyn_culm_stats, "Data/CulmStats/brooklyn.csv");

indiana_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                  ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                  FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                  TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(indiana)) {
  ByGame=i;
  TotalFG=indiana_culm_stats$TotalFG[i-1] + indiana$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=indiana_culm_stats$TotalFGA[i-1] + indiana$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=indiana_culm_stats$TotalThreePoint[i-1] + indiana$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=indiana_culm_stats$TotalThreePA[i-1] + indiana$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=indiana_culm_stats$TotalFT[i-1] + indiana$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = indiana_culm_stats$TotalFTA[i-1] + indiana$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=indiana_culm_stats$ORB[i-1] + indiana$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=indiana_culm_stats$DRB[i-1] + indiana$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=indiana_culm_stats$TotalAssists[i-1] + indiana$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=indiana_culm_stats$TotalSTL[i-1] + indiana$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=indiana_culm_stats$TotalBLK[i-1] + indiana$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=indiana_culm_stats$TotalTOV[i-1] + indiana$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=indiana_culm_stats$TotalPF[i-1] + indiana$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=indiana_culm_stats$TotalPTS[i-1] + indiana$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  indiana_culm_stats <- rbind(indiana_culm_stats, new.row)
}

indiana_culm_stats = subset(indiana_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(indiana_culm_stats, "Data/CulmStats/indiana.csv");

orleans_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(orleans)) {
  ByGame=i;
  TotalFG=orleans_culm_stats$TotalFG[i-1] + orleans$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=orleans_culm_stats$TotalFGA[i-1] + orleans$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=orleans_culm_stats$TotalThreePoint[i-1] + orleans$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=orleans_culm_stats$TotalThreePA[i-1] + orleans$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=orleans_culm_stats$TotalFT[i-1] + orleans$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = orleans_culm_stats$TotalFTA[i-1] + orleans$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=orleans_culm_stats$ORB[i-1] + orleans$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=orleans_culm_stats$DRB[i-1] + orleans$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=orleans_culm_stats$TotalAssists[i-1] + orleans$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=orleans_culm_stats$TotalSTL[i-1] + orleans$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=orleans_culm_stats$TotalBLK[i-1] + orleans$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=orleans_culm_stats$TotalTOV[i-1] + orleans$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=orleans_culm_stats$TotalPF[i-1] + orleans$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=orleans_culm_stats$TotalPTS[i-1] + orleans$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  orleans_culm_stats <- rbind(orleans_culm_stats, new.row)
}

orleans_culm_stats = subset(orleans_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(orleans_culm_stats, "Data/CulmStats/orleans.csv");

memphis_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(memphis)) {
  ByGame=i;
  TotalFG=memphis_culm_stats$TotalFG[i-1] + memphis$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=memphis_culm_stats$TotalFGA[i-1] + memphis$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=memphis_culm_stats$TotalThreePoint[i-1] + memphis$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=memphis_culm_stats$TotalThreePA[i-1] + memphis$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=memphis_culm_stats$TotalFT[i-1] + memphis$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = memphis_culm_stats$TotalFTA[i-1] + memphis$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=memphis_culm_stats$ORB[i-1] + memphis$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=memphis_culm_stats$DRB[i-1] + memphis$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=memphis_culm_stats$TotalAssists[i-1] + memphis$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=memphis_culm_stats$TotalSTL[i-1] + memphis$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=memphis_culm_stats$TotalBLK[i-1] + memphis$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=memphis_culm_stats$TotalTOV[i-1] + memphis$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=memphis_culm_stats$TotalPF[i-1] + memphis$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=memphis_culm_stats$TotalPTS[i-1] + memphis$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  memphis_culm_stats <- rbind(memphis_culm_stats, new.row)
}

memphis_culm_stats = subset(memphis_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(memphis_culm_stats, "Data/CulmStats/memphis.csv");

miami_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(miami)) {
  ByGame=i;
  TotalFG=miami_culm_stats$TotalFG[i-1] + miami$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=miami_culm_stats$TotalFGA[i-1] + miami$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=miami_culm_stats$TotalThreePoint[i-1] + miami$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=miami_culm_stats$TotalThreePA[i-1] + miami$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=miami_culm_stats$TotalFT[i-1] + miami$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = miami_culm_stats$TotalFTA[i-1] + miami$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=miami_culm_stats$ORB[i-1] + miami$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=miami_culm_stats$DRB[i-1] + miami$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=miami_culm_stats$TotalAssists[i-1] + miami$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=miami_culm_stats$TotalSTL[i-1] + miami$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=miami_culm_stats$TotalBLK[i-1] + miami$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=miami_culm_stats$TotalTOV[i-1] + miami$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=miami_culm_stats$TotalPF[i-1] + miami$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=miami_culm_stats$TotalPTS[i-1] + miami$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  miami_culm_stats <- rbind(miami_culm_stats, new.row)
}

miami_culm_stats = subset(miami_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(miami_culm_stats, "Data/CulmStats/miami.csv");

orlando_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                               ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                               FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                               TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(orlando)) {
  ByGame=i;
  TotalFG=orlando_culm_stats$TotalFG[i-1] + orlando$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=orlando_culm_stats$TotalFGA[i-1] + orlando$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=orlando_culm_stats$TotalThreePoint[i-1] + orlando$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=orlando_culm_stats$TotalThreePA[i-1] + orlando$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=orlando_culm_stats$TotalFT[i-1] + orlando$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = orlando_culm_stats$TotalFTA[i-1] + orlando$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=orlando_culm_stats$ORB[i-1] + orlando$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=orlando_culm_stats$DRB[i-1] + orlando$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=orlando_culm_stats$TotalAssists[i-1] + orlando$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=orlando_culm_stats$TotalSTL[i-1] + orlando$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=orlando_culm_stats$TotalBLK[i-1] + orlando$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=orlando_culm_stats$TotalTOV[i-1] + orlando$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=orlando_culm_stats$TotalPF[i-1] + orlando$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=orlando_culm_stats$TotalPTS[i-1] + orlando$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  orlando_culm_stats <- rbind(orlando_culm_stats, new.row)
}

orlando_culm_stats = subset(orlando_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(orlando_culm_stats, "Data/CulmStats/orlando.csv");

portland_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(portland)) {
  ByGame=i;
  TotalFG=portland_culm_stats$TotalFG[i-1] + portland$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=portland_culm_stats$TotalFGA[i-1] + portland$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=portland_culm_stats$TotalThreePoint[i-1] + portland$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=portland_culm_stats$TotalThreePA[i-1] + portland$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=portland_culm_stats$TotalFT[i-1] + portland$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = portland_culm_stats$TotalFTA[i-1] + portland$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=portland_culm_stats$ORB[i-1] + portland$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=portland_culm_stats$DRB[i-1] + portland$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=portland_culm_stats$TotalAssists[i-1] + portland$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=portland_culm_stats$TotalSTL[i-1] + portland$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=portland_culm_stats$TotalBLK[i-1] + portland$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=portland_culm_stats$TotalTOV[i-1] + portland$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=portland_culm_stats$TotalPF[i-1] + portland$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=portland_culm_stats$TotalPTS[i-1] + portland$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  portland_culm_stats <- rbind(portland_culm_stats, new.row)
}

portland_culm_stats = subset(portland_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(portland_culm_stats, "Data/CulmStats/portland.csv");

phoenix_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                  ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                  FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                  TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(phoenix)) {
  ByGame=i;
  TotalFG=phoenix_culm_stats$TotalFG[i-1] + phoenix$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=phoenix_culm_stats$TotalFGA[i-1] + phoenix$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=phoenix_culm_stats$TotalThreePoint[i-1] + phoenix$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=phoenix_culm_stats$TotalThreePA[i-1] + phoenix$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=phoenix_culm_stats$TotalFT[i-1] + phoenix$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = phoenix_culm_stats$TotalFTA[i-1] + phoenix$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=phoenix_culm_stats$ORB[i-1] + phoenix$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=phoenix_culm_stats$DRB[i-1] + phoenix$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=phoenix_culm_stats$TotalAssists[i-1] + phoenix$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=phoenix_culm_stats$TotalSTL[i-1] + phoenix$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=phoenix_culm_stats$TotalBLK[i-1] + phoenix$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=phoenix_culm_stats$TotalTOV[i-1] + phoenix$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=phoenix_culm_stats$TotalPF[i-1] + phoenix$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=phoenix_culm_stats$TotalPTS[i-1] + phoenix$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  phoenix_culm_stats <- rbind(phoenix_culm_stats, new.row)
}

phoenix_culm_stats = subset(phoenix_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(phoenix_culm_stats, "Data/CulmStats/phoenix.csv");

houston_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(houston)) {
  ByGame=i;
  TotalFG=houston_culm_stats$TotalFG[i-1] + houston$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=houston_culm_stats$TotalFGA[i-1] + houston$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=houston_culm_stats$TotalThreePoint[i-1] + houston$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=houston_culm_stats$TotalThreePA[i-1] + houston$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=houston_culm_stats$TotalFT[i-1] + houston$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = houston_culm_stats$TotalFTA[i-1] + houston$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=houston_culm_stats$ORB[i-1] + houston$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=houston_culm_stats$DRB[i-1] + houston$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=houston_culm_stats$TotalAssists[i-1] + houston$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=houston_culm_stats$TotalSTL[i-1] + houston$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=houston_culm_stats$TotalBLK[i-1] + houston$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=houston_culm_stats$TotalTOV[i-1] + houston$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=houston_culm_stats$TotalPF[i-1] + houston$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=houston_culm_stats$TotalPTS[i-1] + houston$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  houston_culm_stats <- rbind(houston_culm_stats, new.row)
}

houston_culm_stats = subset(houston_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(houston_culm_stats, "Data/CulmStats/houston.csv");

sacramento_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                 ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                 FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                 TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(sacramento)) {
  ByGame=i;
  TotalFG=sacramento_culm_stats$TotalFG[i-1] + sacramento$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=sacramento_culm_stats$TotalFGA[i-1] + sacramento$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=sacramento_culm_stats$TotalThreePoint[i-1] + sacramento$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=sacramento_culm_stats$TotalThreePA[i-1] + sacramento$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=sacramento_culm_stats$TotalFT[i-1] + sacramento$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = sacramento_culm_stats$TotalFTA[i-1] + sacramento$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=sacramento_culm_stats$ORB[i-1] + sacramento$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=sacramento_culm_stats$DRB[i-1] + sacramento$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=sacramento_culm_stats$TotalAssists[i-1] + sacramento$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=sacramento_culm_stats$TotalSTL[i-1] + sacramento$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=sacramento_culm_stats$TotalBLK[i-1] + sacramento$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=sacramento_culm_stats$TotalTOV[i-1] + sacramento$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=sacramento_culm_stats$TotalPF[i-1] + sacramento$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=sacramento_culm_stats$TotalPTS[i-1] + sacramento$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  sacramento_culm_stats <- rbind(sacramento_culm_stats, new.row)
}

sacramento_culm_stats = subset(sacramento_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(sacramento_culm_stats, "Data/CulmStats/sacramento.csv");

san.antonio_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                    ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                    FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                    TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(san.antonio)) {
  ByGame=i;
  TotalFG=san.antonio_culm_stats$TotalFG[i-1] + san.antonio$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=san.antonio_culm_stats$TotalFGA[i-1] + san.antonio$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=san.antonio_culm_stats$TotalThreePoint[i-1] + san.antonio$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=san.antonio_culm_stats$TotalThreePA[i-1] + san.antonio$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=san.antonio_culm_stats$TotalFT[i-1] + san.antonio$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = san.antonio_culm_stats$TotalFTA[i-1] + san.antonio$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=san.antonio_culm_stats$ORB[i-1] + san.antonio$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=san.antonio_culm_stats$DRB[i-1] + san.antonio$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=san.antonio_culm_stats$TotalAssists[i-1] + san.antonio$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=san.antonio_culm_stats$TotalSTL[i-1] + san.antonio$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=san.antonio_culm_stats$TotalBLK[i-1] + san.antonio$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=san.antonio_culm_stats$TotalTOV[i-1] + san.antonio$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=san.antonio_culm_stats$TotalPF[i-1] + san.antonio$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=san.antonio_culm_stats$TotalPTS[i-1] + san.antonio$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  san.antonio_culm_stats <- rbind(san.antonio_culm_stats, new.row)
}

san.antonio_culm_stats = subset(san.antonio_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(san.antonio_culm_stats, "Data/CulmStats/san_antonio.csv");

minnesota_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                     ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                     FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                     TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(minnesota)) {
  ByGame=i;
  TotalFG=minnesota_culm_stats$TotalFG[i-1] + minnesota$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=minnesota_culm_stats$TotalFGA[i-1] + minnesota$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=minnesota_culm_stats$TotalThreePoint[i-1] + minnesota$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=minnesota_culm_stats$TotalThreePA[i-1] + minnesota$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=minnesota_culm_stats$TotalFT[i-1] + minnesota$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = minnesota_culm_stats$TotalFTA[i-1] + minnesota$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=minnesota_culm_stats$ORB[i-1] + minnesota$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=minnesota_culm_stats$DRB[i-1] + minnesota$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=minnesota_culm_stats$TotalAssists[i-1] + minnesota$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=minnesota_culm_stats$TotalSTL[i-1] + minnesota$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=minnesota_culm_stats$TotalBLK[i-1] + minnesota$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=minnesota_culm_stats$TotalTOV[i-1] + minnesota$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=minnesota_culm_stats$TotalPF[i-1] + minnesota$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=minnesota_culm_stats$TotalPTS[i-1] + minnesota$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  minnesota_culm_stats <- rbind(minnesota_culm_stats, new.row)
}

minnesota_culm_stats = subset(minnesota_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(minnesota_culm_stats, "Data/CulmStats/minnesota.csv");

denver_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                   ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                   FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                   TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(denver)) {
  ByGame=i;
  TotalFG=denver_culm_stats$TotalFG[i-1] + denver$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=denver_culm_stats$TotalFGA[i-1] + denver$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=denver_culm_stats$TotalThreePoint[i-1] + denver$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=denver_culm_stats$TotalThreePA[i-1] + denver$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=denver_culm_stats$TotalFT[i-1] + denver$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = denver_culm_stats$TotalFTA[i-1] + denver$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=denver_culm_stats$ORB[i-1] + denver$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=denver_culm_stats$DRB[i-1] + denver$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=denver_culm_stats$TotalAssists[i-1] + denver$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=denver_culm_stats$TotalSTL[i-1] + denver$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=denver_culm_stats$TotalBLK[i-1] + denver$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=denver_culm_stats$TotalTOV[i-1] + denver$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=denver_culm_stats$TotalPF[i-1] + denver$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=denver_culm_stats$TotalPTS[i-1] + denver$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  denver_culm_stats <- rbind(denver_culm_stats, new.row)
}

denver_culm_stats = subset(denver_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(denver_culm_stats, "Data/CulmStats/denver.csv");

utah_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(utah)) {
  ByGame=i;
  TotalFG=utah_culm_stats$TotalFG[i-1] + utah$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=utah_culm_stats$TotalFGA[i-1] + utah$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=utah_culm_stats$TotalThreePoint[i-1] + utah$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=utah_culm_stats$TotalThreePA[i-1] + utah$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=utah_culm_stats$TotalFT[i-1] + utah$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = utah_culm_stats$TotalFTA[i-1] + utah$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=utah_culm_stats$ORB[i-1] + utah$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=utah_culm_stats$DRB[i-1] + utah$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=utah_culm_stats$TotalAssists[i-1] + utah$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=utah_culm_stats$TotalSTL[i-1] + utah$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=utah_culm_stats$TotalBLK[i-1] + utah$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=utah_culm_stats$TotalTOV[i-1] + utah$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=utah_culm_stats$TotalPF[i-1] + utah$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=utah_culm_stats$TotalPTS[i-1] + utah$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  utah_culm_stats <- rbind(utah_culm_stats, new.row)
}

utah_culm_stats = subset(utah_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(utah_culm_stats, "Data/CulmStats/utah.csv");

philly_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                              ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                              FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                              TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(philly)) {
  ByGame=i;
  TotalFG=philly_culm_stats$TotalFG[i-1] + philly$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=philly_culm_stats$TotalFGA[i-1] + philly$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=philly_culm_stats$TotalThreePoint[i-1] + philly$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=philly_culm_stats$TotalThreePA[i-1] + philly$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=philly_culm_stats$TotalFT[i-1] + philly$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = philly_culm_stats$TotalFTA[i-1] + philly$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=philly_culm_stats$ORB[i-1] + philly$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=philly_culm_stats$DRB[i-1] + philly$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=philly_culm_stats$TotalAssists[i-1] + philly$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=philly_culm_stats$TotalSTL[i-1] + philly$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=philly_culm_stats$TotalBLK[i-1] + philly$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=philly_culm_stats$TotalTOV[i-1] + philly$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=philly_culm_stats$TotalPF[i-1] + philly$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=philly_culm_stats$TotalPTS[i-1] + philly$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  philly_culm_stats <- rbind(philly_culm_stats, new.row)
}

philly_culm_stats = subset(philly_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(philly_culm_stats, "Data/CulmStats/philly.csv");

knicks_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(knicks)) {
  ByGame=i;
  TotalFG=knicks_culm_stats$TotalFG[i-1] + knicks$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=knicks_culm_stats$TotalFGA[i-1] + knicks$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=knicks_culm_stats$TotalThreePoint[i-1] + knicks$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=knicks_culm_stats$TotalThreePA[i-1] + knicks$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=knicks_culm_stats$TotalFT[i-1] + knicks$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = knicks_culm_stats$TotalFTA[i-1] + knicks$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=knicks_culm_stats$ORB[i-1] + knicks$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=knicks_culm_stats$DRB[i-1] + knicks$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=knicks_culm_stats$TotalAssists[i-1] + knicks$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=knicks_culm_stats$TotalSTL[i-1] + knicks$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=knicks_culm_stats$TotalBLK[i-1] + knicks$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=knicks_culm_stats$TotalTOV[i-1] + knicks$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=knicks_culm_stats$TotalPF[i-1] + knicks$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=knicks_culm_stats$TotalPTS[i-1] + knicks$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  knicks_culm_stats <- rbind(knicks_culm_stats, new.row)
}

knicks_culm_stats = subset(knicks_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(knicks_culm_stats, "Data/CulmStats/knicks.csv");

washington_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(washington)) {
  ByGame=i;
  TotalFG=washington_culm_stats$TotalFG[i-1] + washington$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=washington_culm_stats$TotalFGA[i-1] + washington$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=washington_culm_stats$TotalThreePoint[i-1] + washington$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=washington_culm_stats$TotalThreePA[i-1] + washington$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=washington_culm_stats$TotalFT[i-1] + washington$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = washington_culm_stats$TotalFTA[i-1] + washington$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=washington_culm_stats$ORB[i-1] + washington$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=washington_culm_stats$DRB[i-1] + washington$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=washington_culm_stats$TotalAssists[i-1] + washington$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=washington_culm_stats$TotalSTL[i-1] + washington$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=washington_culm_stats$TotalBLK[i-1] + washington$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=washington_culm_stats$TotalTOV[i-1] + washington$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=washington_culm_stats$TotalPF[i-1] + washington$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=washington_culm_stats$TotalPTS[i-1] + washington$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  washington_culm_stats <- rbind(washington_culm_stats, new.row)
}

washington_culm_stats = subset(washington_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(washington_culm_stats, "Data/CulmStats/washington.csv");

clippers_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                    ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                    FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                    TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(clippers)) {
  ByGame=i;
  TotalFG=clippers_culm_stats$TotalFG[i-1] + clippers$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=clippers_culm_stats$TotalFGA[i-1] + clippers$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=clippers_culm_stats$TotalThreePoint[i-1] + clippers$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=clippers_culm_stats$TotalThreePA[i-1] + clippers$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=clippers_culm_stats$TotalFT[i-1] + clippers$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = clippers_culm_stats$TotalFTA[i-1] + clippers$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=clippers_culm_stats$ORB[i-1] + clippers$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=clippers_culm_stats$DRB[i-1] + clippers$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=clippers_culm_stats$TotalAssists[i-1] + clippers$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=clippers_culm_stats$TotalSTL[i-1] + clippers$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=clippers_culm_stats$TotalBLK[i-1] + clippers$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=clippers_culm_stats$TotalTOV[i-1] + clippers$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=clippers_culm_stats$TotalPF[i-1] + clippers$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=clippers_culm_stats$TotalPTS[i-1] + clippers$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  clippers_culm_stats <- rbind(clippers_culm_stats, new.row)
}

clippers_culm_stats = subset(clippers_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(clippers_culm_stats, "Data/CulmStats/clippers.csv");

lakers_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                  ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                  FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                  TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(lakers)) {
  ByGame=i;
  TotalFG=lakers_culm_stats$TotalFG[i-1] + lakers$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=lakers_culm_stats$TotalFGA[i-1] + lakers$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=lakers_culm_stats$TotalThreePoint[i-1] + lakers$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=lakers_culm_stats$TotalThreePA[i-1] + lakers$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=lakers_culm_stats$TotalFT[i-1] + lakers$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = lakers_culm_stats$TotalFTA[i-1] + lakers$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=lakers_culm_stats$ORB[i-1] + lakers$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=lakers_culm_stats$DRB[i-1] + lakers$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=lakers_culm_stats$TotalAssists[i-1] + lakers$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=lakers_culm_stats$TotalSTL[i-1] + lakers$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=lakers_culm_stats$TotalBLK[i-1] + lakers$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=lakers_culm_stats$TotalTOV[i-1] + lakers$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=lakers_culm_stats$TotalPF[i-1] + lakers$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=lakers_culm_stats$TotalPTS[i-1] + lakers$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  lakers_culm_stats <- rbind(lakers_culm_stats, new.row)
}

lakers_culm_stats = subset(lakers_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(lakers_culm_stats, "Data/CulmStats/lakers.csv");

oklahoma_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(oklahoma)) {
  ByGame=i;
  TotalFG=oklahoma_culm_stats$TotalFG[i-1] + oklahoma$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=oklahoma_culm_stats$TotalFGA[i-1] + oklahoma$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=oklahoma_culm_stats$TotalThreePoint[i-1] + oklahoma$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=oklahoma_culm_stats$TotalThreePA[i-1] + oklahoma$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=oklahoma_culm_stats$TotalFT[i-1] + oklahoma$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = oklahoma_culm_stats$TotalFTA[i-1] + oklahoma$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=oklahoma_culm_stats$ORB[i-1] + oklahoma$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=oklahoma_culm_stats$DRB[i-1] + oklahoma$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=oklahoma_culm_stats$TotalAssists[i-1] + oklahoma$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=oklahoma_culm_stats$TotalSTL[i-1] + oklahoma$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=oklahoma_culm_stats$TotalBLK[i-1] + oklahoma$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=oklahoma_culm_stats$TotalTOV[i-1] + oklahoma$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=oklahoma_culm_stats$TotalPF[i-1] + oklahoma$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=oklahoma_culm_stats$TotalPTS[i-1] + oklahoma$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  oklahoma_culm_stats <- rbind(oklahoma_culm_stats, new.row)
}

oklahoma_culm_stats = subset(oklahoma_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(oklahoma_culm_stats, "Data/CulmStats/oklahoma.csv");

toronto_culm_stats <- data.frame(ByGame=1, TotalFG=0, FGPerGame=0, TotalFGA=0, FGAPerGame=0, FGP=0, TotalThreePoint=0, ThreePointPerGame=0, TotalThreePA=0,
                                  ThreePointAPerGame=0, ThreePointP=0, TotalFT=0, FTPerGame=0, TotalFTA=0, FTAPerGame=0,
                                  FTP=0, TotalORB=0, ORBPerGame =0, TotalDRB=0, DRBPerGame=0, TRBPerGame=0, TotalAssists=0, ASTPerGame = 0,
                                  TotalSTL=0, STLPerGame=0, TotalBLK=0, BLKPerGame=0, TotalTOV=0, TOVPerGame=0, TotalPF=0, PFPerGame=0, TotalPTS=0, PTSPerGame=0)

for (i in 2: nrow(toronto)) {
  ByGame=i;
  TotalFG=toronto_culm_stats$TotalFG[i-1] + toronto$FG[i-1]; 
  FGPerGame=TotalFG/(i-1);
  TotalFGA=toronto_culm_stats$TotalFGA[i-1] + toronto$FGA[i-1];
  FGAPerGame=TotalFGA/(i-1);
  FGP=TotalFG/TotalFGA; 
  TotalThreePoint=toronto_culm_stats$TotalThreePoint[i-1] + toronto$ThreePoint[i-1];
  ThreePointPerGame=TotalThreePoint/(i-1);
  TotalThreePA=toronto_culm_stats$TotalThreePA[i-1] + toronto$ThreePointA[i-1];
  ThreePointAPerGame=TotalThreePA/(i-1);
  ThreePointP=TotalThreePoint/TotalThreePA; 
  TotalFT=toronto_culm_stats$TotalFT[i-1] + toronto$FT[i-1]; 
  FTPerGame=TotalFT/(i-1); 
  TotalFTA = toronto_culm_stats$TotalFTA[i-1] + toronto$FTA[i-1]; 
  FTAPerGame= TotalFTA/(i-1); 
  FTP=TotalFT/TotalFTA; 
  TotalORB=toronto_culm_stats$ORB[i-1] + toronto$ORB[i-1];
  ORBPerGame =TotalORB/(i-1);
  TotalDRB=toronto_culm_stats$DRB[i-1] + toronto$DRB[i-1];
  DRBPerGame=TotalDRB/(i-1);
  TRBPerGame=(TotalORB + TotalDRB)/(i-1);
  TotalAssists=toronto_culm_stats$TotalAssists[i-1] + toronto$AST[i-1];
  ASTPerGame = TotalAssists/(i-1);
  TotalSTL=toronto_culm_stats$TotalSTL[i-1] + toronto$STL[i-1];
  STLPerGame=TotalSTL/(i-1);
  TotalBLK=toronto_culm_stats$TotalBLK[i-1] + toronto$BLK[i-1];
  BLKPerGame=TotalBLK/(i-1);
  TotalTOV=toronto_culm_stats$TotalTOV[i-1] + toronto$TOV[i-1];
  TOVPerGame=TotalTOV/(i-1);
  TotalPF=toronto_culm_stats$TotalPF[i-1] + toronto$PF[i-1];
  PFPerGame=TotalPF/(i-1);
  TotalPTS=toronto_culm_stats$TotalPTS[i-1] + toronto$PTS[i-1];
  PTSPerGame=TotalPTS/(i-1);
  
  new.row <- data.frame(ByGame=ByGame, TotalFG=TotalFG, FGPerGame=FGPerGame, TotalFGA=TotalFGA, FGAPerGame=FGAPerGame, FGP=FGP, TotalThreePoint=TotalThreePoint, ThreePointPerGame=ThreePointPerGame, TotalThreePA=TotalThreePA,
                        ThreePointAPerGame=ThreePointAPerGame, ThreePointP=ThreePointP, TotalFT=TotalFT, FTPerGame=FTPerGame, TotalFTA=TotalFTA, FTAPerGame=FTAPerGame,
                        FTP=FTP, TotalORB=TotalORB, ORBPerGame =ORBPerGame, TotalDRB=TotalDRB, DRBPerGame=DRBPerGame, TRBPerGame=TRBPerGame, TotalAssists=TotalAssists, ASTPerGame = ASTPerGame,
                        TotalSTL=TotalSTL, STLPerGame=STLPerGame, TotalBLK=TotalBLK, BLKPerGame=BLKPerGame, TotalTOV=TotalTOV, TOVPerGame=TOVPerGame, TotalPF=TotalPF, PFPerGame=PFPerGame, TotalPTS=TotalPTS, PTSPerGame=PTSPerGame)
  
  toronto_culm_stats <- rbind(toronto_culm_stats, new.row)
}

toronto_culm_stats = subset(toronto_culm_stats, select=-c(TotalFG, TotalFGA, TotalThreePoint, TotalThreePA, TotalFT, TotalFTA, TotalORB, TotalDRB, TotalAssists, TotalSTL, TotalBLK, TotalTOV, TotalPF, TotalPTS ))

write.csv(toronto_culm_stats, "Data/CulmStats/toronto.csv");
