

##
# Challenge 5
##

f <- file.choose

f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.txt"
d <- read.table(f, header = TRUE, sep ="\t", stringsAsFactors = FALSE)
head(d) # lists the first 6 lines of data
tail(d) # shows the last 6 lines of data
class(d) # shows that tables are typically loaded as data frames
d <- read.delim(f, header = TRUE, stringsAsFactors = FALSE)
head(d)
f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.csv"
d <- read.table(f, header = TRUE, sep =",", stringsAsFactors = FALSE)
head(d)
d <- read.csv(f, header = TRUE, stringsAsFactors = FALSE)
head(d)

#
# Not working
require(readr)
f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.txt"
d <- read_tsv(f, col_names = TRUE) # for tab-separated files
Sys.setenv("VROOM_CONNECTION_SIZE")
head(d)
class(d)
d <- read_delim(f, delim="\t", col_names = TRUE)
head(d)
require(readr)
f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.csv"
d <- read_csv(f, col_names = TRUE) # for comma-separated files
head(d)
d <- read_delim(f, delim = ",", col_names = TRUE)
head(d)
#
#

require(readxl)
f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.xlsx"
d <- read_excel(f, sheet = 1, col_names = TRUE)
head(d)
str(d)

require(XLConnect)
f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.xlsx"
d <- readWorksheetFromFile(f, sheet = 1, header = TRUE)
#
# Error in readWorksheetFromFile(f, sheet = 1, header = TRUE) : 
# could not find function "readWorksheetFromFile"
#
head(d)
str(d)


f <- "~/Desktop/BI 588/AN588-Week-2/CPDS-1960-2014-reduced.xlsx"
if (file.exists(f)) {file.remove(f)}
writeWorksheetToFile(f, d, sheet = "myData", clearSheets = TRUE)
# Error in writeWorksheetToFile(f, d, sheet = "myData", clearSheets = TRUE) : 
#  could not find function "writeWorksheetToFile"





library(curl)
f <- curl("https://raw.githubusercontent.com/fuzzyatelin/fuzzyatelin.github.io/master/AN588_Fall21/CPDS-1960-2014-reduced.csv")
d <- read.csv(f, header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(d)
f <- curl("https://raw.githubusercontent.com/fuzzyatelin/fuzzyatelin.github.io/master/AN588_Fall21/CPDS-1960-2014-reduced.txt")
d <- read.table(f, header = TRUE, sep="\t", stringsAsFactors = FALSE)
head(d)



# Error: The size of the connection buffer (131072) was not large enough
# to fit a complete line:
#  * Increase it by setting `Sys.setenv("VROOM_CONNECTION_SIZE")`
head(d)

f <- "https://raw.githubusercontent.com/fuzzyatelin/fuzzyatelin.github.io/master/AN588_Fall21/CPDS-1960-2014-reduced.txt"
d <- read_tsv(f, col_names = TRUE)
# Error: The size of the connection buffer (131072) was not large enough
# to fit a complete line:
#   * Increase it by setting `Sys.setenv("VROOM_CONNECTION_SIZE")`
head(d)

install.packages("rdrop2")
require(rdrop2)
drop_auth() # opens a browser dialog box to ask for authorization...
drop_dir() # lists the contents of your dropbox folder
f <- "CPDS-1960-2014-reduced.csv" # name of the file to read from
f <- drop_search(f) # searches your dropbox directory for file or directory names; this can be slow
f <- f$path # $path is the location of the results returned above
d <- drop_read_csv(f, header = TRUE, sep =",", stringsAsFactors = FALSE)
head(d)
str(d)
#Make dropbox account

link <- "https://www.dropbox.com/s/hft09jnpjepy1a1/CPDS-1960-2014-reduced.csv?dl=0"

link <- gsub(pattern = "dl=0", replacement = "dl=1", x = link)
d <-read.csv(link, header = TRUE, sep =",", stringsAsFactors = FALSE)
head(d)
str(d)

require(repmis)
d <- source_data(link, header = TRUE, sep =",") # use the same updated link to the raw data as above




