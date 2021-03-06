% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fileCache.R
\name{storeRDS}
\alias{storeRDS}
\title{Store an R object into the file cache}
\usage{
storeRDS(obj, fname, basepath = ".")
}
\arguments{
\item{obj}{An R object}

\item{fname}{The name of the directory in \code{basepath} where various
revisions of the file are stored. I.e., \code{file.txt} should be a
directory, with revisions of the true \code{file.txt} stored inside of
it.}

\item{basepath}{A string. The path which stores \code{fname}. Default '.'}
}
\value{
A message announcing the path the object has been written to
}
\description{
Given an R object, attempts to store it in the directory
\code{basepath/fname}. The name given to the file will be of the form
\code{DATE.rds}, where \code{DATE} is of the format
\code{\%Y_\%m_\%d_\%H_\%M}.  An error will be thrown if \code{basepath} does
not exist. However, if \code{basepath/fname} does not exist, an attempt will
be made to create it. The \code{DATE} is the current time. Intended to be
used with \code{\link{retrieveRDS}}. See \code{\link{mostRecentTimestamp}}
for an usage example.
}
\examples{
saveRDS(mtcars, 'cars')
saveRDS(mtcars, 'cars')
# Now the filesystem has, in '.':
# ├── mtcars
# │   ├── 2020_04_09_16_40.rds
# │   ├── 2020_04_09_16_41.rds

}
