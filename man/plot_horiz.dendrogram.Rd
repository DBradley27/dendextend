% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tanglegram.R
\name{plot_horiz.dendrogram}
\alias{plot_horiz.dendrogram}
\title{Plotting a left-tip-adjusted horizontal dendrogram}
\source{
This function is based on replicating \link{plot.dendrogram}.
In fact, I'd be happy if in the future, some tweaks could be make to
\link{plot.dendrogram}, so that it would replace the need for this function.
}
\usage{
plot_horiz.dendrogram(x, type = c("rectangle", "triangle"),
  center = FALSE, edge.root = is.leaf(x) || !is.null(attr(x,
  "edgetext")), dLeaf = NULL, horiz = TRUE, xaxt = "n", yaxt = "s",
  xlim = NULL, ylim = NULL, nodePar = NULL, edgePar = list(),
  leaflab = c("perpendicular", "textlike", "none"), side = TRUE,
  text_pos = 2, ...)
}
\arguments{
\item{x}{tree object (dendrogram)}

\item{type}{a character vector with either "rectangle" or "triangle" (passed to \link{plot.dendrogram})}

\item{center}{logical; if TRUE, nodes are plotted centered with respect to
the leaves in the branch. Otherwise (default), plot them in the
 middle of all direct child nodes.}

\item{edge.root}{logical; if true, draw an edge to the root node.}

\item{dLeaf}{a number specifying the distance in user coordinates between 
the tip of a leaf and its label. If NULL as per default, 3/4 of a letter
width is used.}

\item{horiz}{logical indicating if the dendrogram should be 
drawn horizontally or not. In this function it MUST be TRUE!}

\item{xaxt}{graphical parameters, or arguments for other methods.}

\item{yaxt}{graphical parameters, or arguments for other methods.}

\item{xlim}{(NULL) optional x- and y-limits of the plot, passed to plot.default. 
The defaults for these show the full dendrogram.}

\item{ylim}{(NULL) optional x- and y-limits of the plot, passed to plot.default. 
The defaults for these show the full dendrogram.}

\item{nodePar}{NULL.}

\item{edgePar}{list()}

\item{leaflab}{c("perpendicular", "textlike", "none")}

\item{side}{logical (TRUE). Should the tips of the drawn tree be facing
the left side. This is the important feature of this function.}

\item{text_pos}{integer from either 1 to 4 (2). Two relevant values 
are 2 and 4. 2 (default) means that the labels are alligned to the 
tips of the tree leaves. 4 will have the labels allign to the left,
making them look like they were when the tree was on the left side
(with leaves tips facing to the right).}

\item{...}{passed to \link{plot}.}
}
\value{
The invisiable dLeaf value.
}
\description{
The default \code{plot(dend, horiz = TRUE)}, gives us a dendrogram tree plot
with the tips turned right. The current function enables the creation of 
the same tree, but with the tips turned left. The main challange in doing this
is finding the distance of the labels from the leaves tips - which is solved
with this function.
}
\examples{
\dontrun{
dend <- USArrests[1:10,] \%>\% dist \%>\% hclust \%>\% as.dendrogram

par(mfrow =c(1,2), mar = rep(6,4))
plot_horiz.dendrogram(dend, side=FALSE) 
plot_horiz.dendrogram(dend, side=TRUE) 
# plot_horiz.dendrogram(dend, side=TRUE, dLeaf= 0) 
# plot_horiz.dendrogram(dend, side=TRUE, nodePar = list(pos = 1)) 
# sadly, lab.pos is not implemented yet, 
## so the labels can not be right aligned...


plot_horiz.dendrogram(dend, side=F)
plot_horiz.dendrogram(dend, side=TRUE, dLeaf=0, xlim = c(100,-10)) # bad
plot_horiz.dendrogram(dend, side=TRUE, text_offset = 0)
plot_horiz.dendrogram(dend, side=TRUE, text_offset = 0,text_pos=4)

}
}
\seealso{
\link{plot.dendrogram}, \link{tanglegram}
}
