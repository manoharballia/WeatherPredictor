# WeatherPredictor

Description :

This project can be used to retrieve a weather type, humidity ,pressure etc for a given city , latitude and longitude.
project internally uses forecast API to retrieve these data points and the code base is implemented and tested in R version 3.3.1 on MAC OS.

Steps to installation:

1. This project has been written in R , So you need to install R in your machine.

2. Get the Forecast API by registering with your email id from below link:
  https://developer.forecast.io/register
  After you register and sig-in you can get a API(encrypted 32 alphanumeric character in length)
  Ex: 7042762d61804f6fd9473751248b3643
3. Go to R command line and install the require packages and library below:
  i) R > install.packages("devtools")
  ii)R > library("devtools")
  iii) R> install_github("Rforecastio", "hrbrmstr")
4. Once you are done with installation verify the installation:
  R > library(Rforecastio)
  R > packageVersion("Rforecastio")
  It should return a version.
5. now clone this project and go inside the directory 'WeatherPredictor' using cd command.
6. Replace API with your API key in file generateWeatherReport.R line number 5, Current used API might be deactive.
7. To Run issue below command :
8. Rsript generateWeatherReport.R
9. To check the output run below command:
10.cat weather_report.txt

You are done  :)
