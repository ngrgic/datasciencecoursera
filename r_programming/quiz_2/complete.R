#Neven Grgic
#Week2 Quiz
#Rprogramming Coursera Johns Hopkins Data Science Specialization

complete <- function(directory, id = 1:332) {
    files <- list.files(directory)[id]
    nobs <- numeric(length(files))
    for (i in 1:length(files)) {
        one_monitor <- read.csv(paste(directory, "/", files[i], sep = ''))
        nobs[i] <- sum(complete.cases(one_monitor))
    }
    data.frame(id, nobs)
}

complete('specdata', 3:5)