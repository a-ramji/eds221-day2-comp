# Data wrangling and viz

# the whole R script is a code chunk :) 

library(tidyverse)
library(here)
library(janitor)

plants <- read_csv(here("data", "power_plants.csv")) |> 
  clean_names()

# only keeping rows that have "Alabama" as the value for the state-name column

alabama_plants <- plants |> 
  filter(state_name == "Alabama" | state_name == "alabama")


alabama_plot <- ggplot(alabama_plants, aes(x = install_mw, y = total_mw)) +
  geom_point()

# in Console:
# gggsave(filename = here("figures", "alabama_plants.jpg"), plot = alabama_plot)


