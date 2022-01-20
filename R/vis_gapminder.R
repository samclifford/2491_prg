# Activity 1

# Make a plot showing how the relationship between GDP, life expectancy and population varies over time and continent

library(gapminder)
library(tidyverse)

gapminder <- read_csv("../data/gapminder.csv")

gapminder_example <- 
  ggplot(data = gapminder,
         aes(x = gdpPercap, y = lifeExp)) +
  geom_path(aes(group = country, color = continent)) +
  geom_point(aes(color = continent, size = pop), shape = 1) +
  scale_color_brewer(palette = "PuOr") +
  scale_x_log10() +
  annotation_logticks(sides = 'b') +
  facet_wrap( ~ continent, scales = 'free', nrow = 1) +
  scale_size_area() +
  theme_dark() +
  labs(x = "GDP", y = "LE",
       title = "GDP and Life Expectancy 1952-2007") +
  theme(legend.position = 'bottom',
        legend.box      = 'vertical',
        axis.text.x = element_text(angle = 45, hjust = 1))

gapminder_example

ggsave(filename = "gapminder_example.pdf",
       plot = gapminder_example, width = 8, height = 4, 
       units = "in", device = cairo_pdf)


ggsave(filename = "gapminder_example.png",
       plot = gapminder_example, width = 8, height = 4, 
       units = "in", dpi = 300)


# Activity 2

# Activity 2a

# Build a graph which your group believes better shows the relationship between life expectancy and GDP


# Activity 2b

# Make a plot which is as bad as possible while still attempting to honestly show the information
# (i.e. don't add things to the plot which can't be derived from the variables in the plot)
