# To run the program, make sure you are connected to internet. 
# Go through ReadMe file before executing the program.
library(Rtts)

# Taking required input as arguments.
args = commandArgs(trailingOnly = TRUE)
contentFile = args[1] 
speakerNumber = args[2]

# To read content from the .txt file.
content <- read.delim(contentFile)

# Making a vector of all available speakers.
speaker <- c("Bruce", "Theresa", "Angela", "MCHEN_Bruce", "MCHEN_Joddess", "ENG_Bob", "ENG_Alice", "ENG_Tracy")

# To make sure the argument is converted to integer before using it to access speaker.
speakerNumber <- as.integer(speakerNumber)

# The main feature of the program. Refer to https://cran.r-project.org/web/packages/Rtts/Rtts.pdf for documentation of this method.
tts_ITRI(content, 0, 100, speaker[speakerNumber], "TTS.mp3")

cat("Your output is stored in file 'TTS.mp3'")
