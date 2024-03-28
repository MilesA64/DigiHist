###ggplotviz###

##Exercises##

#remove/filtercolumn

penguins%>%
  filter(year == 2007)
filter(penguins, sex == "female")
filter(penguins, bill_length_mm > 30)

#addcolumn

penguins%>%
  mutate(flipper_length_cm = flipper_length_mm / 10)

#CountinginData

penguins%>%
  group_by(island) %>%
  summarize(count=n())

penguins%>%
  count(island)

penguins%>%
  count(island, name = "count")

#AvgFlipperLengthofEachSpecies

penguins%>%
  summarise(avg_flipper_mm = mean(flipper_length_mm, na.rm = TRUE),
            .by = species)

penguins%>%
  filter(!is.na(flipper_length_mm)) %>%
  summarise(avg_flipper_mm = mean(flipper_length_mm, na.rm = TRUE),
            .by = species)

#AvgFlipLengthforEachSexofEachSpecies

penguins%>%
  filter(!is.na(sex),!is.na(flipper_length_mm)) %>%
  group_by(species, sex) %>%
  summarize(avg_flipper_mm = mean(flipper_length_mm, na.rm = TRUE))

##ggplot_lesson##

#BuildFirstPlot#

ggplot(data = penguins)

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point()

#Mapping_vs_Setting

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(color = "orange")

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species)) +
  geom_smooth(method = "lm")

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = sex)) +
  geom_smooth(method = "lm")

##LabelsandScales

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(title = "Body mass and flipper length",
       subtitle = "For Adelie, Chinstrap, and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Species", shape = "Species") +
  scale_color_brewer(type = "qual") +
  theme_linedraw()

##VizCategoricalVariables

ggplot(penguins, aes(x = species)) +
  geom_bar()

ggplot(penguins, aes(y = species)) +
  geom_bar()

ggplot(penguins, aes(x = species)) +
  geom_bar()+
  coord_flip()

# Order Bars by Count

ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar()
  geom_bar(stat = "indentity")

# Stat

penguins %>%
  count(species) %>%
  ggplot(aes(x = species, y = n)) +
  geom_bar(stat = "identity")

# geom_Col

penguins %>%
  count(species) %>%
  ggplot(aes(x = species, y = n)) +
  geom_col()

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar()

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "dodge")

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = position_dodge(preserve = "single")) +
  labs(y = NULL, x = "Island")

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")

# Facets

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species)) +
  facet_wrap(~island)
       