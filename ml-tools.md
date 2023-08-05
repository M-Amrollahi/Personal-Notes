# List of ML tools:
[link](https://github.com/EthicalML/awesome-production-machine-learning#industry-strength-cv)

## ML expressions:
- Pretext tasks: learn features from data in models like self-supervised.
- Downstream Tasks: Regarding a few labeled data, we use a model for classifiaction or other tasks.

## Data paralelsim tools
1. **Horovod**:  for distributed training. Horovod was developed by Uber in order to bring the ideas of HPC to deep learning.


## Data labeling 
1. **Rubrix**: Rubrix is a production-ready Python framework for exploring, annotating, and managing data in NLP projects. That is build on top of Elasticsearch. [[github link](https://github.com/recognai/rubrix)] , [[readthedocs link](https://rubrix.readthedocs.io/en/stable/)]

2. **Snorkel**: Data annotating tools for NLP. [website](https://www.snorkel.org/), [Github](https://github.com/snorkel-team/snorkel-tutorials) 


## Search similarity, Search engine:

1. Faiss by Facebook. Faiss is a library for efficient similarity search and clustering of dense vectors. It contains algorithms that search in sets of vectors of any size, up to ones that possibly do not fit in RAM. It also contains supporting code for evaluation and parameter tuning. Faiss is written in C++ with complete wrappers for Python/numpy. [Github](https://github.com/facebookresearch/faiss), [link](https://www.pinecone.io/learn/faiss-tutorial/)


## OCR and Document parsing
1. Processing documents as Text: extract text with PyPDF2, extract tables with Camelot or TabulaPy, extract figures with PyMuPDF.
2. Converting documents into Image (OCR): conversion with pdf2image, extract data with PyTesseract plus many other supporting libraries, or just LayoutParser.
[Medium](https://towardsdatascience.com/document-parsing-with-python-ocr-75543448e581)


## Object Detection
1. Facebook object detection (Detectron)
2. YOLO


## Model Tracking
1. [Tensorboard](https://pytorch.org/tutorials/intermediate/tensorboard_tutorial.html)


## OpenSearch:
Powered by Lucene for searching and indexing.

Here, he combines the vector search(using sentence transformer) and text search to get results:<br>
[link](https://towardsdatascience.com/text-search-vs-vector-search-better-together-3bd48eb6132a)


## Scalene
With Scalene we can profile our program and review cpu+ram+gpu usage.\
[link](https://github.com/plasma-umass/scalene)

## NorFair
Lightweight model for object tracking\
[link](https://github.com/tryolabs/norfair)


## Pycaret: to compare different classical models
[link](https://pycaret.gitbook.io/docs/get-started/quickstart)

## LazyPredict: like pycaret to compare models
[link](https://lazypredict.readthedocs.io/en/latest/)

## To balance dataset using SMOTE and other methods
[link](https://imbalanced-learn.org/stable/introduction.html)

## SQL in jupyter notebook with JupySQL
[link](https://jupysql.ploomber.io/en/latest/quick-start.html)

## FastDup: increase image and video data quality
- fd.vis.duplicates_gallery()    # create a visual gallery of duplicates
- fd.vis.outliers_gallery()      # create a visual gallery of anomalies
- fd.vis.component_gallery()     # create a visualization of connected components
- fd.vis.stats_gallery()         # create a visualization of images statistics (e.g. blur)
- fd.vis.similarity_gallery()    # create a gallery of similar images
[link](https://github.com/visual-layer/fastdup)

## Feast: Feature Store
Data might be anywhere on any platform. With Feature Store we can integrate them and then use them as data source.
[link](https://github.com/feast-dev/feast)
