#Neven Grgic
#Week2 Quiz
#Rprogramming Coursera Johns Hopkins Data Science Specialization

pollutantmean <- function(directory, pollutant, id = 1:332){
    all_data <- data.frame()
    for (a_file in list.files(directory)[id]){
        one_monitor <- read.csv(paste(directory, "/", a_file, sep = ''))
        all_data <- rbind(all_data, one_monitor)
    }
    mean(all_data[, pollutant], na.rm = TRUE)
}



pollutantmean('specdata', 'nitrate')