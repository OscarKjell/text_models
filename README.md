# Text Models

This repository contains scripts and models compatible with the `text` R-package. Each model type has its own directory. For adding new model types, please create a corresponding directory, consider adding the model-recipe in the `recipes` folder, and fill in this README-file.

## Tutorial
To use the pretrained models for prediction, follow the following general procedure: 
```R
library(text)
textPredict( 
    model_info = "url/to/your/model",
    texts = "texts to predict" 
)
```
### Example
Predict valence using the facebook pretrained model:
```R
predictions <- textPredict(
  model_info = "https://github.com/OscarKjell/text_models/raw/main/valence_models/facebook_model.rds",
  texts = Language_based_assessment_data_8$harmonytexts,
  dim_names = FALSE  # For this particular model, dim_names should be set to FALSE (see Guide, Valence Models).
)
```

## Model Directories

### Valence Models
- `facebook_model.rds`
  - Source: Facebook data from 2442 posts with valence ratings by psychology professionals, based on Preoţiuc-Pietro et al. (2016). 
  - Guide: Set dim_names to FALSE. 
- `facebook_model_reduced.rds`
  - Source: Facebook data from 2442 posts with valence ratings by psychology professionals, based on Preoţiuc-Pietro et al. (2016).   Principal Component Analysis (PCA) using 20 components has been applied to the embeddings. 
  - Guide: Set dim_names to FALSE. 

### Implicit Motive Models
- `schone_training_rob_la_l23_to_achievement_10k.rds`
  - Guide: See implicit motive section in help(textPredict).
- `schone_training_rob_la_l23_to_power_10k.rds`
  - Guide: See implicit motive section in help(textPredict).
- `schone_training_rob_la_l23_to_affiliation_10k.rds`
  - Guide: See implicit motive section in help(textPredict).