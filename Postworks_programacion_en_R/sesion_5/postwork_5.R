library(tidyverse)
library(dplyr)
library(ggplot2)
setwd("D:\Bedu\jorgeBarcenas\Postworks_programacion_en_R\sesion_5")

pdf("Postwork_sesion5.pdf" , paper="USr", width=1000)
iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width, color = Species, shape = Species)) +
  geom_point() +
  geom_density2d() +
  ggtitle('IRIS') +
  theme_light()



iris %>%
  mutate(Species = 'ALL') %>%
  bind_rows(iris) %>%
  ggplot(aes(Petal.Length, Petal.Width, color = Species)) +
  geom_point() +
  geom_smooth() +
  xlab('Petal Length') +
  ylab('Petal Width') +
  facet_wrap(~Species, scales = 'free') +
  theme_bw()


dev.off()
