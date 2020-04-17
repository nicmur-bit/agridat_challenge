library(tidyverse)
library(agridat)

#generate plot that shows effect of fertiliser treatment across genotypes (gen) and sites (loc)

#for data blackman.wheat %>% ggplot (data is built into agridat package)

bm_wheat_site <- group_by(blackman.wheat, loc)

bm_wheat_site %>% 
  ggplot(aes(x= gen, y = yield, colour = nitro)) +
  geom_point() +
  facet_wrap(~ loc) +
  labs(
    title = "Effect of fertiliser on genotypes",
    x = "Genotype across sites",
    y = "Yields",
    colour = "Nitrogen level",
    caption = "Data Source: Agridat - Blackman.wheat") +
  theme_gray() +
  theme(
    axis.title.y = element_text(colour= "blue", size = 10),
    axis.title.x = element_text(colour= "blue", size = 10),
    legend.title = element_text(colour= "blue", size = 10), 
    axis.text.x = element_text(angle = 45)
  )
   
  
