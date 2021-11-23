library(drat)
library(hurricaneexposuredata)
library(hurricaneexposure)
addRepo("geanders")

data("hurr_tracks")
head(hurr_tracks)

map_tracks(storms = "Harvey-2017")+
  ggplot2::ggtitle("Track of Hurricane Harvey(2017)")
#'First, for the selected hurricane Harvey(2017),plot the track of the hurricane
#'As the read line showed on the map, Hurricane Harvey was landfall on Texas 
#'and Louisiana, then head towards the middle of the United States.

map_counties(storm = "Harvey-2017", metric = "distance")+
  ggplot2::ggtitle("County-level Distance from the Track of Harvey(2017)")
#'Then plot the closest distance between the storm and each county.
#'Counties with darker colors are closer to the center of the hurricane.

map_counties(storm="Harvey-2017",metric="wind")+
  ggplot2::ggtitle("Wind Speed during Hurricane Harvey(2017)")
#'Plot the wind speed during the storm to each county.
#'The hurricane logged in from Texas, where counties experienced the fastest
#'wind speeds, followed by Louisiana.
#'When the hurricane goes to the middle, the wind speed is not fast.

map_wind_exposure(storm = "Harvey-2017", wind_limit = 20)+
  ggplot2::ggtitle("Counties Sustained Winds of 20m/s or Higher")
#'Draw the counties where the hurricane wind speed exceeds 20m/s.
#'Painted counties are mostly concentrated in Texas, 
#'so the disasters and losses caused there are the most serious.

map_event_exposure(storm = "Harvey-2017", event_type = "flood")+
  ggplot2::ggtitle("Counties that Flooded in Harvey(2017)")
#'Map counties for which a flood event was listed for Harvey(2017)
#'Many areas in eastern Texas received large rainfall, 
#'causing unprecedented flooding. 