#Neven Grgic
#Week2 Quiz
#Rprogramming Coursera Johns Hopkins Data Science Specialization

corr <- function(directory, threshold = 0){
    files <- list.files(directory)
    nobs <- numeric(0)
    for (i in 1:length(files)) {
        one_monitor <- read.csv(paste(directory, "/", files[i], sep = ''))
        total <- sum(complete.cases(one_monitor))
        if (total > threshold) {
            nobs <- c(nobs, cor(one_monitor$sulfate, one_monitor$nitrate, use = 'complete.obs'))
        }
    }
    nobs
}

cr <- corr('specdata')
summary(cr)
length(cr)