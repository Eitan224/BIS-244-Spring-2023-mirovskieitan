library(dplyr)
US_States <- read.csv("us-states.csv")
PENNSYLVANIA <- filter(US_States, state=="Pennsylvania") 

PENNSYLVANIA$incr_cases <- 0
PENNSYLVANIA$incr_deaths <- 0

for (i in 2:length(PENNSYLVANIA$cases)) {
PENNSYLVANIA$incr_cases[i] <- (PENNSYLVANIA$cases[i]-PENNSYLVANIA$cases[i-1]) 
PENNSYLVANIA$incr_deaths[i] <- (PENNSYLVANIA$deaths[i]-PENNSYLVANIA$deaths[i-1])
}

std_incr_cases <- sd(PENNSYLVANIA$incr_cases)
std_incr_cases