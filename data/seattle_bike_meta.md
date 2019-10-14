# Seattle Bike Data

`bike_data_by_day.csv` contains data on the number of bikes that cross the Fremont bridge and the Burke Gilman trail north of 70th street, aggregated by day from May 1, 2017 to May 1, 2018. The data schema is as follows:

| Column name | Description |
| --- | --- |
| date | (Date) Date of count |
| burke.north | (Int.) Number of bikes recorded traveling northbound on the Burke Gilman trail north of 70th street.|
| burke.south | (Int.) Number of bikes recorded traveling southbound on the Burke Gilman trail north of 70th street. |
| fremont.west | (Int.) Number of bikes recorded traveling on the west pathway of the Fremont bridge. Direction of travel is not specified. |
| fremont.east | (Int.) Number of bikes recorded traveling on the east pathway of the Fremont bridge. Direction of travel is not specified. |
| weekday | (Character) Day of the week for the corresponding date. |

Data collected from Seattle's Open Data portal:

* [Fremont Bridge Hourly Bicycle Counts by Month October 2012 to present] (https://data.seattle.gov/Transportation/Fremont-Bridge-Hourly-Bicycle-Counts-by-Month-Octo/65db-xm6k)

* [Burke Gilman Trail north of NE 70th St Bike and Ped CounterTransportation] (https://data.seattle.gov/Transportation/Burke-Gilman-Trail-north-of-NE-70th-St-Bike-and-Pe/2z5v-ecg8)
