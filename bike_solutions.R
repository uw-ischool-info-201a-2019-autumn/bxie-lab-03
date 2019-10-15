# TODO B1. Read data/seattle_bike_meta.md to understand the data. 
# How many columns are there? What is each column's data type?
# What is the difference between data collected for the two locations?

# Burke data is directional (you know which direction somebody is traveling), 
# whereas the Fremont Bridge does not provide this directional dta

# TODO B2: Load the dataset from data/seattle_bike.csv (you may need to set the working directory)
df_bike <- read.csv('./data/seattle_bike.csv')

# TODO B3: View the dataset. Is it what you expect? Are there missing or malformed data?

View(df_bike)# data looks complete (no missing values), counts are >= 0 (as expected). Looks good!

# TODO B4. Create new columns which total all bikes which cross the fremont bridge (regardless of pathway) 
# and totals all bikes which cross the Burke Gilman (regardless of direction). 

df_bike$fremont_total <- df_bike$fremont.east + df_bike$fremont.west
df_bike$burke_total <- df_bike$burke.north + df_bike$burke.south

# TODO: B5. The City of Seattle believes the Burke Gilman is used more so for recreational cyclists 
# and the Fremont Bridge is used more so for commuters. 
# Can you provide evidence to support or refute this claim? Assume people typically work on weekdays and have weekends off. 

mean(df_bike[df_bike$weekday %in% c("Saturday", "Sunday"), "burke_total"])
mean(df_bike[df_bike$weekday %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday"), "burke_total"])
# On average, more cyclists cross the Burke Gilman on a weekend day than a weekday day. 
# This suggests that the Burke Gilman is used for more recreational rides (which tend to happen on weekends)

mean(df_bike[df_bike$weekday %in% c("Saturday", "Sunday"), "fremont_total"])
mean(df_bike[df_bike$weekday %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday"), "fremont_total"])
# On average, more cyclists cross the Fremont Bridge on a weekday day than a weekend day. 
# This suggests that the Fremont Bridge is used for more commuting cyclists (who tend to work more so Mon - Fri)

