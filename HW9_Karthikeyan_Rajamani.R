#HW9
#Instructions:
#Work with `iris` dataset from {datasets} package.
#Run `?iris` command to read more about the dataset.
#Your answers to the questions below will create R script
#that examines `iris` dataset.
#Run your script by clicking `Source` button at the top
#right of this window.
#When you run this script, every answer should be printed
#to console. You need to save every answer in a variable
#and then print it.
#Save this script as "HW9_YourFirstName_YourLastName.R"
#and submit to Blackboard

#Start by assigning iris dataset to `data`.
data<-iris

#Q1 (2 pts). Extract a vector of `Sepal.Length` values for
#setosa species and store it in `SL_setosa` variable.
SL_setosa<-data[data$Species=="setosa",1]

#Q2 (2 pts). Apply `summary()` function to `SL_setosa`.
#Store the output as `SL_summary`
SL_summary<-summary(SL_setosa)

#Q3 (2 pts). Examine `SL_summary` object with str(). You will
#see that it is a table, but it can be reated as a named
#vector. Just like with any other object, you can extract
#different parts of it.
#Extract the maximum value of `SL_summary` (not the name)
#and store it as `maxSL`.
str(SL_summary)
Vec_SL_summary<-as.vector(SL_summary)
maxSL<-Vec_SL_summary[6]
max(SL_setosa)
#Q4 (5 pts). There is another way to find the maximum value
#of vector elements. You could apply max() function to your
#vector. `max(SL_setosa)` should generate the same answer as
#you got for Q3. Similarly, you can apply mean() function to
#a vector to find the mean value. 
#Create a named vector that stores the mean values of `Petal.length`
#for 3 species: setosa, versicolor and virginica. This might
#take multiple steps. Store the final vector as `means_3sp`.
Vsetosa<-data[data$Species=="setosa",3]
m1=mean(Vsetosa)
Vversicolor<-data[data$Species=="versicolor",3]
m2<-mean(Vversicolor)
Vvirginica<-data[data$Species=="virginica",3]
m3<-mean(Vvirginica)
means_3sp<-rbind(m1,m2,m3)
#Q5 (2 pts). Extract all rows where `Petal.width` is equal to 1.8.
#Store your result in `PW_1.8` data frame.
PW_1.8<-data[data$Petal.Width=="1.8", ]

#Q6 (2 pts). How many flowers of each species do you have
#in `PW_1.8` data frame?
#Store results as `ver_count` for versicolor counts and
#`vir_count` for virginica counts
v1<-PW_1.8[PW_1.8$Species=="versicolor", ]
v2<-as.vector(v1)
ver_count<-nrow(v2)
ver_count
v3<-PW_1.8[PW_1.8$Species=="virginica", ]
v4=as.vector(v3)
vir_count<-nrow(v4)
vir_count
#Q7 (2 pts). Using original dataset, select "Petal.Width" for
#rows with Sepal.Length>=7 and Sepal.Width<3. Store your result
#as `TallAndNarrow``
TallAndNarrow<-data[(data$Sepal.Length >="7" & data$Sepal.Width<"3"),4]

#Q8 (3 pts). We can subset data frames using logical vectors. 
#Create a logical vector that can be used to select every other
#row of the `iris` dataset and show how you will use it to output
#every other line(row) of the iris dataset. Store your vector as
#`v` and your subset of iris dataset as `EveryOtherLine` 
v<-c(TRUE,FALSE)
EveryOtherLine<-data[ v, ]
View(EveryOtherLine)
