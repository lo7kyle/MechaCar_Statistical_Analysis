# Load tidyverse library
library(tidyverse)
# Load MechaCar_mpg.csv
mechacar_data <- read.csv('MechaCar_mpg.csv') #import dataset
head(mechacar_data)
# perform linear Regression using MPG as dependent
# generate multiple linear regression model
mpgReg = lm(mpg ~ vehicle_length + vehicle_weight  + spoiler_angle  + ground_clearance +
     AWD,data=mechacar_data)
mpgReg
# generate summary statistics
summary(mpgReg)

# create an equation for each independent variables
equation1=function(x){coef(mpgReg)[2]*x+coef(mpgReg)[1]+coef(mpgReg)[2]}
equation2=function(x){coef(mpgReg)[3]*x+coef(mpgReg)[1]+coef(mpgReg)[2]}
equation3=function(x){coef(mpgReg)[4]*x+coef(mpgReg)[1]+coef(mpgReg)[3]}
equation4=function(x){coef(mpgReg)[5]*x+coef(mpgReg)[1]+coef(mpgReg)[4]}
equation5=function(x){coef(mpgReg)[6]*x+coef(mpgReg)[1]+coef(mpgReg)[5]}

# plotting regression of length and mpg
plt <- ggplot(mpgReg,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point()+ stat_function(fun=equation1,geom="line",color=scales::hue_pal()(2)[1]) +
  geom_smooth(method="lm")
# plotting regression of weight and mpg
plt <- ggplot(mpgReg,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt + geom_point()+ stat_function(fun=equation2,geom="line",color=scales::hue_pal()(2)[1]) +
  geom_smooth(method="lm")

######## Suspension Coil Analysis######## 
# Load Suspension_Coil.csv from folder
suscoil_data <- read.csv('Suspension_Coil.csv') #import dataset
head(suscoil_data)

# total summary df using summarize on PSI column
total_summary <- suscoil_data %>% summarize(Mean_PSI=mean(PSI),
                                            Median_PSI=median(PSI),
                                            Var_PSI=var(PSI),
                                            SD_PSI=sqrt(Var_PSI))

lot_summary <- suscoil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                            Median_PSI=median(PSI),
                                            Var_PSI=var(PSI),
                                            SD_PSI=sqrt(Var_PSI),
                                            .groups = 'keep')

# box plots to show outliers
plt <- ggplot(suscoil_data,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt + geom_boxplot(outlier.colour = "red", outlier.shape = 1) + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees
