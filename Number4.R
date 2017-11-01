#load library
library(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

#your code goes here
#1
ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass g") +
  geom_histogram()
#2
ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass g") +
  scale_x_log10() +
  geom_histogram(fill = "blue")
#3
ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass g") +
  scale_x_log10() +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3)
#4
ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass g") +
  scale_x_log10() +
  geom_histogram(fill =  "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3) +
  facet_wrap(~family)
#5