
premier_league <- data.frame(10,2)
premier_league<-NULL

premier_league<- as.data.frame(premier_league)
premier_league
premier_league$Club<-'Arsenal'
premier_league$Matchday_income <- 99
premier_league$TV_and_Broadcasting <- 180
premier_league$Retail <- 26
premier_league$Property_development <- 15
premier_league$Player_trading <- 2
premier_league$Net_finance_charges <- 9
premier_league$Top_goalscorer <- 14
premier_league$Top_goalscorer_name <- 'Alexandre Lacazette'
premier_league$Top_cleansheets <- 11
premier_league$Top_cleansheets_name <- 'Petr Cech'
premier_league$W <- 19
premier_league$L <- 13
premier_league$D <- 6
premier_league$Goals_difference <- 23
premier_league$Pts <- 63

premier_league[2,]<-NA
premier_league$Club[2]<-'Brighton and Hove Albion'
premier_league[2,2] <- 19
premier_league[2,3] <- 110
premier_league[2,4] <- 9
premier_league[2,5] <- 2
premier_league[2,6] <- 0
premier_league[2,7] <- 0.2
premier_league[2,8] <- 12
premier_league[2,9] <- 'Glenn Murray'
premier_league[2,10] <- 8
premier_league[2,11] <- 'Mathew Rayan'
premier_league[2,12] <- 9
premier_league[2,13] <- 13
premier_league[2,14] <- 16
premier_league[2,15] <- -20
premier_league[2,16] <- 40

premier_league

premier_league[3,]<-NA
premier_league[3,1]<-'AFC Bournemouth'
premier_league[3,2] <- 5
premier_league[3,3] <- 119
premier_league[3,4] <- 1
premier_league[3,5] <- 1
premier_league[3,6] <- 0
premier_league[3,7] <- 0.5
premier_league[3,8] <- 8
premier_league[3,9] <- 'Calum Wilson'
premier_league[3,10] <- 4
premier_league[3,11] <- 'Asmir Begovic'
premier_league[3,12] <- 11
premier_league[3,13] <- 11
premier_league[3,14] <- 16
premier_league[3,15] <- -16
premier_league[3,16] <- 44

premier_league$Club<-NULL
premier_league$Club[1]<-'Arsenal'
premier_league$Club[3]<-'AFC Bournemouth'
premier_league[4]<-NULL
premier_league$Club[4,1]<-'s'
str(premier_league)

burnly <- c(6,122,12,0,0,10,'Chris Wood',12,'Nick Pope',14,12,12,-3,54,'Burnley')

premier_league<-rbind(premier_league,burnly)

final_df <- apply(premier_league[,c(1:6,8,10:14)],2,function(x)as.numeric(x))
final_df$Top_Goalscorer <- premier_league$Top_goalscorer_name
final_df$Top_Cleansheets <- premier_league$Top_cleansheets_name
final_df <- as.data.frame(final_df)
final_df$Club <- premier_league$Club
final_df

str(premier_league)

premier_league$Matchday_income<-as.numeric(premier_league$Matchday_income)

Chelsea <- c(74,204,170,0,0,12,'Eden Hazard',15,'Tibo Courtois',21,10,7,24,70,'Chelsea')

premier_league<-rbind(premier_league,Chelsea)


CrystalPalace <- c(11,121,18,0,0,10,'Luka Milivojevic',9,'Wayne Hennessey',11,16,11,-10,44,'Crystal Palace')

premier_league<-rbind(premier_league,Liverpool)
premier_league

Everton <- c(16,130,43,0,-66,11,'Wayne Rooney',10,'Jordan Pickford',13,15,10,-14,49,'Everton')

HuddersfieldTown <- c(5,110,10,0,-48,9,'Steve Mounié',10,'Jonas Lössl',9,19,10,-30,37,'Huddersfield Town')

LeicesterCity <- c(13,124,22,0,-10,20,'Jamie Vardy',9,'Kasper Schmeichel',12,15,11,-4,47,'Leicester City')

Liverpool <- c(81,220,154,0,-56,32,'Mohamed Salah',11,'Loris Karius',21,5,12,46,75,'Liverpool')

premier_league$Matchday_income <- as.numeric(premier_league$Matchday_income)
premier_league$TV_and_Broadcasting <- as.numeric(premier_league$TV_and_Broadcasting)
premier_league$Retail <- as.numeric(premier_league$Retail)
premier_league$Player_trading <- as.numeric(premier_league$Player_trading)
premier_league$Net_finance_charges <- as.numeric(premier_league$Net_finance_charges)
premier_league$Top_goalscorer <- as.numeric(premier_league$Top_goalscorer)
premier_league$Top_cleansheets <- as.numeric(premier_league$Top_cleansheets)
premier_league$W <- as.numeric(premier_league$W)
premier_league$L <- as.numeric(premier_league$L)
premier_league$D <- as.numeric(premier_league$D)
premier_league$Goals_difference <- as.numeric(premier_league$Goals_difference)
premier_league$Pts <- as.numeric(premier_league$Pts)

premier_league
str(premier_league)

write.csv(premier_league,file='first_10_from_order.csv',row.names = FALSE)

df <- read.csv('first_10_from_order.csv')
