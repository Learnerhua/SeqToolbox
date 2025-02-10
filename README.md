# SeqToolbox
**SeqToolbox** is an R package for transcript sequence analysis. It provides a collection of tools to load, filter, analyze, and visualize transcript data. With this toolbox, you can load transcript sequences from FASTA files, filter them by length, calculate basic statistics (such as GC content), and visualize transcript length distributions.
# Features
- Load Transcript Sequences: Load transcript sequences from a FASTA file.
- Filter Transcripts: Filter transcript sequences based on a minimum length threshold.
- Summarize Statistics: Calculate basic statistics on transcript lengths and GC content.
- Visualization: Generate histograms of transcript length distributions.
# Installation
To install SeqToolbox from GitHub, use the following commands:
```
#Install devtools if you haven't already
install.packages("devtools")
#Install SeqToolbox from GitHub
devtools::install_github("Learnerhua/SeqToolbox")
```
# Example Usage
```
#Load the SeqToolbox package
library(SeqToolbox)
#Load transcript data from a FASTA file
transcripts <- load_transcripts("path/to/transcripts.fasta")
#Filter transcripts that are longer than 200 bases
filtered_transcripts <- filter_transcripts(transcripts, min_length = 200)
#Get summary statistics for the transcripts
summary <- summarize_transcripts(transcripts)
print(summary)
#Plot the distribution of transcript lengths and save it as a PNG file
plot_length_distribution(transcripts, output_file = "transcript_lengths.png")
```
![](https://github.com/Learnerhua/SeqToolbox/blob/master/example/length_distribution.png)

# Dependencies
- Biostrings: Used for reading and manipulating biological sequence data.

# Contributing
Contributions to SeqToolbox are welcome! If you have suggestions for improvements or have found a bug, please open an issue or submit a pull request.
# Contact
- Author: Jihua Ouyang
- GitHub: https://github.com/Learnerhua
# License
SeqToolbox is open-source and distributed under the MIT License. See the LICENSE file for details.
