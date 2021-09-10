

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
#
#



