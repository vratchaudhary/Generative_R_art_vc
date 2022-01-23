# devtools::install_github("cutterkom/generativeart")
library(generativeart) 
library(ambient)
library(dplyr)
# set the paths
IMG_DIR <- "img/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "handpicked/"
IMG_PATH <- paste0(IMG_DIR, 
                   IMG_SUBDIR)
LOGFILE_DIR <- "logfile/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, 
                       LOGFILE)
# create the directory structure
generativeart::setup_directories(IMG_DIR, 
                                 IMG_SUBDIR, 
                                 IMG_SUBDIR2, 
                                 LOGFILE_DIR)
# include a specific formula, for example:
my_formula <- list(
  x = quote(runif(1, -1, 50) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -1, 50) * y_i^5 - cos(x_i^2)))#y_i^4))

# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = my_formula, 
                            nr_of_img = 1, # set the number of iterations
                            polar = TRUE, 
                            filetype = "png", 
                            color = "black", 
                            background_color = "cyan4")
