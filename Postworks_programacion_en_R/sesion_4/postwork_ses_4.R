######        Postowork 4

#1
mtcars %>% select(hp)

mtcars %>% pull(hp)
######################################################################3
#2

mtcars %>% select(-hp)

#######################################################################
#3
colnames (mtcars)
mtcars %>% select(mpg, hp, vs:gear)
######################################################################3
#4
my_cars <- mtcars %>%
  select(miles_per_gallon = mpg, horse_power = hp) %>%
  tibble::rownames_to_column(var = "model")

my_cars
######################################################################
#5

#1 mpg es 0.425 km / l.


my_cars <- my_cars %>%
  mutate(
    km_per_litre = 0.425 * miles_per_gallon
  )

my_cars

#####################################################################
#6

my_cars %>% sample_frac(size = 0.5, replace = FALSE)


###############################################################
#7
mycars_s <- my_cars %>% slice(10:35)

mycars_s
###############################################################
#8



print(distinct(mycars_s))


#############################################
#9
my_cars %>% filter(miles_per_gallon > 20, 
                    horse_power > 100)

###############################################################
#10

mtcars %>% 
  filter (model == "Lotus Europa")
  


