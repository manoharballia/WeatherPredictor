#####################################
### Author : Manohar Bharti
### Email : manoharballia@gmail.com
####################################

#Importing dependeny
library(Rforecastio)

#Setting API key , Please set your own key 
Sys.setenv(FORECASTIO_API_KEY = "7042762d71804f6fd9473751248a3675")

load_input <- read.table("input_city_lat_long.txt", sep=",", header=TRUE)

#A file to write
output_file <- "weather_report.txt"

#Writing the header
write("Location | Position | Local Time | Conditions | Temperature | Pressure | Humidity", output_file)

apply(load_input, 1, function(row) {
  city <- row["City"]
  lattitude <- row["Latitude"]
  longitude <- row["Longitude"]
  
  current_weather <- get_current_forecast(lattitude, longitude)
  position <- paste(lattitude, longitude, sep=", ")
  local_time <- current_weather$currently$time
  condition <- current_weather$currently$summary
  temperature <- current_weather$currently$temperature
  pressure <- current_weather$currently$pressure
  humidity <- current_weather$currently$humidity
  final_string <- paste(city,position,local_time,condition,temperature,pressure,humidity, sep="|")
  write(final_string, output_file, append=TRUE) 
  #print(final_string)
})

