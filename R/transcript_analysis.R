#' Load Transcripts from a FASTA File
#'
#' This function loads transcript sequences from a FASTA file using Biostrings.
#' @param file_path Path to the FASTA file.
#' @return A DNAStringSet object containing the transcripts.
#' @export
load_transcripts <- function(file_path) {
  if (!file.exists(file_path)) {
    stop("The specified file does not exist.")
  }

  # 使用 :: 语法调用 Biostrings 中的函数
  transcripts <- Biostrings::readDNAStringSet(file_path)
  return(transcripts)
}

#' Filter Transcripts by Minimum Length
#'
#' This function filters transcript sequences based on a minimum length threshold.
#' Only transcripts with lengths greater than the specified threshold will be kept.
#' 
#' @param transcripts A `DNAStringSet` object containing transcript sequences.
#' @param min_length A numeric value specifying the minimum length threshold.
#' @return A `DNAStringSet` object containing the filtered transcript sequences.
#' @export
filter_transcripts <- function(transcripts, min_length) {
  # 使用 :: 语法调用 Biostrings 中的函数
  filtered <- transcripts[Biostrings::width(transcripts) > min_length]
  return(filtered)
}

#' Summarize Transcript Lengths and GC Content
#'
#' This function computes basic statistics about transcript lengths and GC content.
#' It returns a list containing the total number of sequences, maximum length, 
#' minimum length, mean length, and mean GC content.
#'
#' @param transcripts A `DNAStringSet` object containing transcript sequences.
#' @return A list containing the following statistics:
#'   - `total_sequences`: The total number of transcripts.
#'   - `max_length`: The maximum length of the transcripts.
#'   - `min_length`: The minimum length of the transcripts.
#'   - `mean_length`: The mean length of the transcripts.
#'   - `gc_content_mean`: The mean GC content across all transcripts.
#' @export
summarize_transcripts <- function(transcripts) {
  # 使用 :: 语法调用 Biostrings 中的函数
  lengths <- Biostrings::width(transcripts)
  gc_content <- Biostrings::letterFrequency(transcripts, letters = c("G", "C"), as.prob = TRUE)
  summary <- list(
    total_sequences = length(transcripts),
    max_length = max(lengths),
    min_length = min(lengths),
    mean_length = mean(lengths),
    gc_content_mean = mean(gc_content)
  )
  return(summary)
}

#' Plot Transcript Length Distribution
#'
#' This function generates a histogram of transcript lengths to visualize the 
#' distribution of transcript sizes. If an output file path is provided, 
#' the plot will be saved as a PNG file.
#' 
#' @param transcripts A `DNAStringSet` object containing transcript sequences.
#' @param output_file Optional. A character string specifying the output file path 
#'   to save the plot as a PNG. If `NULL`, the plot will be displayed on the screen.
#' @return NULL
#' @export
plot_length_distribution <- function(transcripts, output_file = NULL) {
  # 使用 :: 语法调用 Biostrings 中的函数
  lengths <- Biostrings::width(transcripts)
  graphics::hist(lengths, main = "Transcript Length Distribution",
                 xlab = "Length (bp)", col = "skyblue", border = "white")
  
  if (!is.null(output_file)) {
    grDevices::dev.copy(png, file = output_file)
    grDevices::dev.off()  # Close the device after saving the plot
  }
}
