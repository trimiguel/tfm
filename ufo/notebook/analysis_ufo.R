#load these libraries
library(ChannelAttribution)
library(reshape)
library(ggplot2)


#set working directory
setwd <- setwd('/home/miguel/my_project_python/my_project_env/tfm')


#read in the csv file
df <- read.csv('./ufo/data/raw/ufo_ga_oct_18_mar19.csv', sep = ";")


#apply heursitic model
H <- heuristic_models(df, 'path', 'total_conversions', var_value='total_conversion_value')


#build the Markov model
M <- markov_model(df, 'path', 'total_conversions', var_value='total_conversion_value', order = 1)


#merges both previous dataframes
R <- merge(H, M, by='channel_name')


#select relevant features
R1 <- R[, (colnames(R)%in%c('channel_name', 'first_touch_conversions', 'last_touch_conversions', 'linear_touch_conversions', 'total_conversion'))]


#rename columns
colnames(R1) <- c('channel_name', 'First_touch', 'Last_touch', 'Linear_touch', 'Markov_model')



#transform the dataset
R1 <- melt(R1, id='channel_name')


#plot the total conversions
ggplot(R1, aes(channel_name, value, fill = variable)) +
  geom_bar(stat='identity', position='dodge') +
  ggtitle('TOTAL CONVERSIONS OCT 2018 - MAR 2019') + 
  theme(axis.title.x = element_text(vjust = -2)) +
  theme(axis.title.y = element_text(vjust = +2)) +
  theme(title = element_text(size = 16)) +
  theme(plot.title=element_text(size = 20)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  ylab("")


# Total Conversion Values
R2 <- R[, (colnames(R)%in%c('channel_name', 'first_touch_value', 'last_touch_value', 'linear_touch_value', 'total_conversion_value'))]

colnames(R2) <- c('channel_name', 'first_touch', 'last_touch', 'linear_touch', 'markov_model')

R2 <- melt(R2, id='channel_name')

ggplot(R2, aes(channel_name, value, fill = variable)) +
  geom_bar(stat='identity', position='dodge') +
  ggtitle('TOTAL VALUE OCT 2018 - MAR 2019') + 
  theme(axis.title.x = element_text(vjust = -2)) +
  theme(axis.title.y = element_text(vjust = +2)) +
  theme(title = element_text(size = 16)) +
  theme(plot.title=element_text(size = 20)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  ylab("")



# Write CSV in R
write.table(R, file = "table_ufo.csv", sep=",")
