% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tcplPlotM4ID.R
\name{tcplPlotM4ID}
\alias{tcplPlotM4ID}
\title{Plot fit summary plot by m4id}
\usage{
tcplPlotM4ID(m4id, lvl = 4L)
}
\arguments{
\item{m4id}{Integer, m4id(s) to plot}

\item{lvl}{Integer, the level of data to plot}
}
\description{
\code{tcplPlotM4ID} creates a summary plots for the given m4id(s) by loading
the appropriate data from the tcpl databases and sending it to 
\code{\link{tcplPlotFits}}
}
\details{
A level 4 plot ('lvl' = 4) will plot the concentration series and the 
applicable curves, without an indication of the activity call or the 
winning model. Level 4 plots can be created without having done subsequent
processing.

Level 5 plots include the level 4 information with the activity call and 
model selection. The winning model will be highlighted red in the side panel
containing the summary statistics. Level 6 plots, in addition the all of the 
level 4 and 5 information, include the positive flag IDs. If the flag has 
an associated value, the value will be in parentheses follwing the flag ID.
}
\examples{
## Store the current config settings, so they can be reloaded at the end 
## of the examples
conf_store <- tcplConfList()
tcplConfDefault()
 
tcplPlotM4ID(m4id = 686, lvl = 4) ## Create a level 4 plot
tcplPlotM4ID(m4id = 370, lvl = 5) ## Create a level 5 plot
tcplPlotM4ID(m4id = 322, lvl = 6) ## Create a level 6 plot

## Reset configuration
options(conf_store)

}
\seealso{
\code{\link{tcplPlotFits}}, \code{\link{tcplMakeAeidPlts}}
}
