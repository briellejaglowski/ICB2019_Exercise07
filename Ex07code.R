

iris = read.csv("iris.csv", stringsAsFactors = FALSE)
iris

#1 function that returns odd rows of any dataframe passed as an argument
odd=function(data){
  odddata=data.frame()
  for(i in 1:nrow(data)){
    if(i%%2==1){
      odddata=rbind(odddata, data[i,])
    }
  }
  return(odddata)
}
#example
oddrows=odd(iris)
print(oddrows)

#2
#number of obs for a given species in the data set
obsspecies=function(data, species){
  species.rows=data[data$Species==species,]
  return(nrow(species.rows))
}
#example
obsspecies(iris, "setosa")

#data frame for flowers with Sepal.Width > specified value
SWsearch=function(data, value){
  return(data[data$Sepal.Width>value,])
}
#example
over3.4=SWsearch(iris, 3.4)
print(over3.4)

#data for a given species to a csv with species name as file name
spfile=function(data, species){
  csv.name=paste(species, ".csv", sep="")
  speciesdata=data[data$Species==species,]
  write.csv(speciesdata, csv.name, row.names = FALSE)
}
#example
spfile(iris, "setosa")

