#Reading in NOAA Climate index for NAO

NAO = read.table("https://psl.noaa.gov/data/correlation/nao.data", skip=3, nrow = 70)

NAO_YR = NAO[,1]
NAO_date = paste(rep(NAO_YR, each = 12), "-", 1:12, "-,", 1, sep = "")

install.packages("lubridate")
require(lubridate)

NAO_date = ymd(NAO_date, tz = "UTC")

NAO_ind = NAO[,-1]

NAO_ind  = c(t(NAO_ind))

data = data.frame(date = NAO_date, NAO= NAO_ind)

plot(data, type = "l")
