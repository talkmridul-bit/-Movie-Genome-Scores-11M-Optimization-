library(tidyverse)
library(readr)
data_raw<- read_csv(file.choose())
data_raw
final_movie_11M_data<- data_raw %>% distinct() %>%
  mutate(
    tagId = as.integer(tagId),
    relevance = as.numeric(relevance)
  ) %>% filter(tagId > 3 & relevance > 0.023) %>%
  select(tagId,relevance)
final_movie_11M_data
write.csv(final_movie_11M_data,
          'New_dataset_genome_scores_11M_data.csv',
          row.names = FALSE)
getwd()
