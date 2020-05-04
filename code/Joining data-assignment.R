## Joining data
plots <- read.csv("plots.csv")
species <- read.csv("species.csv")
surveys <- read.csv("surveys.csv")

library(tidyverse)

all_the_data <- left_join(surveys, species) %>%
  left_join(plots)

left_join(surveys, plots) %>%
  select(year, month, day, plot_type) %>%
  distinct()

left_join(surveys, plots) %>%
  group_by(year, month, day, plot_type) %>%
  summarize(captures = n())

precip <- read.csv("Portal_precipitation.csv")

total_captures <- surveys %>%
  group_by(year, month) %>%
  summarize(captures = n())

trial1 <- inner_join(total_captures, precip, 
                    by = c("year" = "Year", "month" = "Month"))

ggplot(trial1, aes(x=Precipitation, y=captures)) +
  geom_point()

left_join(surveys, plots) %>%
  filter(plot_type == 'Rodent Exclosure') %>%
  left_join(species, by=c("species_id" = "species_id")) %>%
  group_by(genus, species) %>%
  summarize(captures = n()) %>%
  filter(captures > 50) %>%
  arrange(desc(captures))
  
anti_join(species, surveys)

foobar <- semi_join(species, surveys) 
  
  