# facebook embeddings
facebook_embedd<- textEmbed(facebook$Post, model = "roberta-base",
                            keep_token_embeddings = FALSE, dim_name = FALSE) #dim name false

# reduce embeddings using PCA
facebook_embedd_reduced <- textEmbedReduce(
  facebook_embedd,
  n_dim = NULL,
  scalar =
    "https://raw.githubusercontent.com/adithya8/ContextualEmbeddingDR/master/models/fb20/scalar.csv",
  pca =
    "https://raw.githubusercontent.com/adithya8/ContextualEmbeddingDR/master/models/fb20/rpca_roberta_768_D_20.csv"
)

# model
facebook_model <- textTrain(
  facebook_embedd$texts,
  facebook$Mean)

# model reduced
facebook_model_reduced <- textTrain(
  facebook_embedd_reduced$texts,
  facebook$Mean,
  dim_names = FALSE)
saveRDS(facebook_model_reduced, "analyses/facebook_model_reduced.rds")

