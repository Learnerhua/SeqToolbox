% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcript_analysis.R
\name{filter_transcripts}
\alias{filter_transcripts}
\title{Filter Transcripts by Minimum Length}
\usage{
filter_transcripts(transcripts, min_length)
}
\arguments{
\item{transcripts}{A \code{DNAStringSet} object containing transcript sequences.}

\item{min_length}{A numeric value specifying the minimum length threshold.}
}
\value{
A \code{DNAStringSet} object containing the filtered transcript sequences.
}
\description{
This function filters transcript sequences based on a minimum length threshold.
Only transcripts with lengths greater than the specified threshold will be kept.
}
