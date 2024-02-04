# Text Models

This repository contains scripts and models compatible with the `text` R-package. Each model type has its own directory. For adding new model types, please create a corresponding directory and fill in this README-file.

## Model Directories

### Valence Models
- `facebook_model.rds`
  - Source: Facebook data from 2442 posts with valence ratings by psychology professionals, based on Preoţiuc-Pietro et al. (2016). 
  - Guide: Set dim_names to FALSE. 
- `facebook_model_reduced.rds`
  - Source: Facebook data from 2442 posts with valence ratings by psychology professionals, based on Preoţiuc-Pietro et al. (2016).   Principal Component Analysis (PCA) using 20 components has been applied to the embeddings. 
  - Guide: Set dim_names to FALSE. 