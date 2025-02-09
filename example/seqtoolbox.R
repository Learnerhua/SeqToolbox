library(SeqToolbox)
#测试
transcripts_from_fasta <- load_transcripts("test.fasta")
transcripts_from_fasta
filtered_transcripts <- filter_transcripts(transcripts_from_fasta, min_length = 1000)
filtered_transcripts
summary <- summarize_transcripts(transcripts_from_fasta)
summary
plot_length_distribution(transcripts_from_fasta, output_file = "length_distribution.png")





