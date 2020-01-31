library(dplyr)

#create data.frame 
air_passengers = data.frame(matrix(AirPassengers,
                                   ncol = 12,
                                   byrow = TRUE,
                                   dimnames = list(as.character(1:12),month.abb)
                                   ))
air_passengers$year = as.character(1949:1960)


air_passengers

#reorder columns
air_passengers = air_passengers %>%
  select(year, everything())

air_passengers

#max for each variable
max_flights = air_passengers%>%
  summarise_all(max)

#max for each month
max_flights_month = air_passengers %>% 
  summarise_if(is.numeric,max)

#mean flights for each month starting with j
mean_fligths_month_j =air_passengers %>%
  summarise_at(vars(starts_with("J")),mean)

#add columns for first 3 months with their medians
air_passengers = air_passengers %>%
  mutate_at(vars(one_of(month.abb[1:3])),funs(med = median))
