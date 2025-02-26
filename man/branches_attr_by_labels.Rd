% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/branches_attr_by.R
\name{branches_attr_by_labels}
\alias{branches_attr_by_labels}
\title{Change col/lwd/lty of branches matching labels condition}
\usage{
branches_attr_by_labels(dend, labels, TF_values = c(2, Inf),
  attr = c("col", "lwd", "lty"), type = c("all", "any"), ...)
}
\arguments{
\item{dend}{a dendrogram dend}

\item{labels}{a character vector of labels from the tree}

\item{TF_values}{a two dimensional vector with the TF_values to use in case a branch fulfills the condition (TRUE)
and in the case that it does not (FALSE). Defaults are 2/Inf for col, lwd and lty.
(so it will insert the first value, and will not change all the FALSE cases)}

\item{attr}{a character with one of the following values: col/lwd/lty}

\item{type}{a character vector of either "all" or "any", indicating which of 
the branches should be painted: ones that all of their labels belong to the supplied labels,
or also ones that even some of their labels are included in the labels vector.}

\item{...}{ignored.}
}
\value{
A dendrogram with modified branches (col/lwd/lty).
}
\description{
The user supplies a dend, labels, and type of condition (all/any), and TF_values
And the function returns a dendrogram with branches col/lwd/lty accordingly
}
\examples{
\dontrun{

library(dendextend)

set.seed(23235)
ss <- sample(1:150, 10 )

# Getting the dend dend
dend <- iris[ss,-5] \%>\% dist \%>\% hclust \%>\% as.dendrogram
dend \%>\% plot

dend \%>\% 
   branches_attr_by_labels(c("123", "126", "23", "29")) \%>\%
   plot
dend \%>\% 
   branches_attr_by_labels(c("123", "126", "23", "29"), "all") \%>\% 
   plot # the same as above
dend \%>\% 
   branches_attr_by_labels(c("123", "126", "23", "29"), "any") \%>\% 
   plot

dend \%>\% 
      branches_attr_by_labels(c("123", "126", "23", "29"),
      "any", "col", c("blue", "red")) \%>\% plot
dend \%>\%
      branches_attr_by_labels(c("123", "126", "23", "29"),
      "any", "lwd", c(4,1)) \%>\% plot
dend \%>\%
      branches_attr_by_labels(c("123", "126", "23", "29"),
       "any", "lty", c(2,1)) \%>\% plot

}
}
\seealso{
\link{noded_with_condition}, \link{get_leaves_attr}, \link{nnodes}, \link{nleaves}
}
