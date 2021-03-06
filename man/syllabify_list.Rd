% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/syllabify.R
\name{syllabify_list}
\alias{syllabify_list}
\title{Syllabify to a list}
\usage{
syllabify_list(pron, alaska_rule = TRUE)
}
\arguments{
\item{pron}{The CMU dictionary pronunciation, either as a vector,
or a string with labels separated by spaces}

\item{alaska_rule}{Don't maximize onset on lax vowel + s sequences}
}
\value{
A with one value per syllable. Each value is a list, with three
values: onset, nucleus, coda. Each will contain a vector of the phones
which belong to each constituent part of the syllable. Any empty
constituent parts will have the value \code{character(0)}
}
\description{
This will take a transcription as input, and return it as a list.
}
\examples{
# String input
syllabify_list("AO0 S T R EY1 L Y AH0")

# Vector input
syllabify_list(c("AO0", "S", "T", "R", "EY1", "L", "Y", "AH0"))
# Hiatus
syllabify_list("HH AY0 EY1 T AH0 S")

# Deficient transcriptions (has warning)
syllabify_list(c("M"))
}
