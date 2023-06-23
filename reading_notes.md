## Experiences from Harvard professor on ML Research
[link](https://docs.google.com/document/d/1uvAbEhbgS_M-uDMTzmOWRlYxqCkogKRXdbKYYT98ooc/edit#heading=h.w86ci8t15ru3)

## Great illustration of pandas and its functions
How we can use pandas in optimal way(memory, cpu)?\
[link](https://betterprogramming.pub/pandas-illustrated-the-definitive-visual-guide-to-pandas-c31fa921a43)

## Is the elbow the only wat to optimise clusters? 
There are some other ways.\
[link](https://towardsdatascience.com/are-you-still-using-the-elbow-method-5d271b3063bd)

## How to get prepared for interview for data science. Topics.
[link](https://medium.com/nerd-for-tech/60-days-plan-to-revise-data-science-concepts-0-to-100-interview-preparation-a30fc0696b48), [link](https://github.com/DopplerHQ/awesome-interview-questions#python)

## Contrasive learning. Negative samples and positive samples and anchor. 
SimCLR.\
[link](https://medium.com/aiguys/contrastive-learning-explained-17fa79f707bf)
[link](https://amitness.com/2020/03/illustrated-simclr/)
[pytorch implementation SimCLR](https://github.com/leftthomas/SimCLR)
[new approach for constrative learning](https://towardsdatascience.com/a-framework-for-contrastive-self-supervised-learning-and-designing-a-new-approach-3caab5d29619)


## How to classify unlabeled data?
- ensemble learning: train some classifiers and label the data whenever almost all classifiers agree on that label
- use simple knn and label the data with high confidence
- train a classifier. Then pick some data and choose those with high confidence and add them to training set. iterate again. psuedo labeling.
- active learning

[link](https://medium.com/aiguys/how-to-classify-unlabeled-data-tricks-for-semisupervised-learning-57706ff04813)

## How to use pandas in efficient way.
Dask. iterate.\
[link](https://towardsdatascience.com/14-techniques-to-make-your-pandas-workflow-lighting-fast-b00ff0ac9267)

## How to build a question-answering model with t5.
Dataset: translate from english to german. context, question, answer\
[link](https://towardsdatascience.com/creating-a-dutch-question-answering-machine-learning-model-3b666a115be3)
[link](https://medium.com/@xiaohan_63326/fine-tune-fine-tuning-bert-for-question-answering-qa-task-5c29e3d518f1)


## How to find out model/data drift? How detect it? types of drifts. NannyML package to detect drifts.
- Covariate shift: shift in input data (independent variables).
- Prior probability shift: shift in target variables.
- Concept drift: change the relation between input and target.
[link](https://towardsdatascience.com/monitoring-machine-learning-models-a-tried-and-true-cure-for-a-data-scientists-insomnia-c45b0979a878)

## MLOps tools for model monitoring in production
- Evidently, Whylogs, Fiddler
- Methodology to Detect Drifts
[link](https://medium.com/@bhargavi.sikhakolli31/monitoring-ml-systems-using-mlops-an-overview-e1d6eea64ae2)

## Pydantic
Define data in pythonic way. if we have data in different manners, we can change them in single unit shape.

[link](https://towardsdatascience.com/easily-validate-user-generated-data-using-pydantic-5ace695cc3c8)

## AI and types of reasoning. 
- Inductive: Specific, Patern, General (like leaves to trees) . 
- Deductive: General, Hypothesis, Specific (like clustering).

[link](https://towardsdatascience.com/on-ai-and-types-of-reasoning-fc6980295158)

## with this package you can fix the unicode char issues: ftfy.
Correct the sentence using â€œftfyâ€\x9d.

## How to use mlflow to log whatever we need during the training models like loss, acc, model params and...
```
mlflow ui - backend-store-uri sqlite:///mlflow.db
```
```python
mlflow.set_tracking_uri("sqlite:///mlflow.db")
mlflow.set_experiment("customer-sentiment-analysis")

with mlflow.start_run():
  mlflow.log_metric("accuracy", results[1])
  mlflow.set_tag("developer", "Isaac")
  mlflow.set_tag("algorithm", "MultinomialNB")
  with open("models/" + model_name, 'wb') as fout:
        pickle.dump((tv, classifier), fout)
  mlflow.log_artifact(local_path="models/" + model_name, artifact_path="models_pickle")

```

[link](https://kargarisaac.medium.com/mlops-project-part-1-machine-learning-experiment-tracking-using-mlflow-f613feb22cd6)


## Self-supervised learning from Jeremy Howard:
- With pretraining, you can use 1000x less data than starting from scratch.\
- There is a paper the identified that using a few layers of some pre-trained model can improve the model training in case of time and accuracy.\ But, that is not huge, so we use SSL.
[link](https://www.fast.ai/posts/2020-01-13-self_supervised.html)

- In this process, the unsupervised problem is transformed into a supervised problem by auto-generating the labels. To make use of the huge quantity of unlabeled data, it is crucial to set the right learning objectives to get supervision from the data itself.
The process of the self-supervised learning method is to identify any hidden part of the input from any unhidden part of the input.

[link](https://neptune.ai/blog/self-supervised-learning#:~:text=Self%2Dsupervised%20learning%20is%20a,by%20auto%2Dgenerating%20the%20labels.)

- Types we can apply ssl on images:
[link](https://amitness.com/2020/02/illustrated-self-supervised-learning/)


## Runge phenomenon:
Sampling.\
equidistance.\
it occurs whenever you try to interpolate a function by polynomials when you are using an equidistant grid.\
You can avoid the Runge phenomenon by using a suitably non-equidistant grid. One of those grids, which are working very well, is the Chebyshev grid, which we will introduce in the next section.
[link](https://medium.com/@mathcube7/chebyshev-interpolation-with-python-2f2e89bb7c30)

## Summary of Transformer models:
[link](https://amatriain.net/blog/transformer-models-an-introduction-and-catalog-2d1e9039f376/)

## Using Bayesian Search can improve the spending of model
[link](https://medium.com/@ali.soleymani.co/stop-using-grid-search-or-random-search-for-hyperparameter-tuning-c2468a2ff887)
[link](https://towardsdatascience.com/hyperparameter-optimization-intro-and-implementation-of-grid-search-random-search-and-bayesian-b2f16c00578a)

## How Diffusion model works?
With Math.\
[link](https://medium.com/@steinsfu/diffusion-model-clearly-explained-cd331bd41166)

## Simple chatbot with NLTK.
Simple as dictionary of questions and answers.\
[link](https://medium.com/@varreldtantio/how-to-build-a-chatbot-using-natural-language-processing-ba9c53e0086c)

## How to use knowledge distilltion(student-teacher model)
new_loss = alpha* (student model output and targets losses) + (1-alpha)* (KL(teacher, student)) .\
[link](https://medium.com/artificialis/maximizing-model-performance-with-knowledge-distillation-in-pytorch-12b3960a486a)

## Ensemle learning. Bagging and Boosting
- Decision tree ensembles combine several decision trees into a single estimator
- Tree ensembles are less prone to overfitting than a single decision tree
- two popular methods are bagging and boosting. These are the seeds behind popular techniques such as Random Forest, AdaBoost, and XGBoost.
- Bagging: “Bootstrap AGGregation.” The way it works is you train a set of decision trees (one at a time) by randomly sampling your training dataset with replacement.
- Boosting leverages the idea of learning from your mistakes. It works by iteratively training decision trees via an error-based data re-weighting scheme. Walking through this, we start with a single training dataset, say T₀, and use it to grow a single decision tree. Afterward, the training dataset is re-weighted so that records with incorrectly predicted targets receive more weight. The new training dataset, say T₁, then trains another decision tree

[link](https://towardsdatascience.com/10-decision-trees-are-better-than-1-719406680564)


## Similarity measures.
Cosine, Euclidian...\
[link](https://towardsdev.com/similarity-measures-in-nlp-implementation-in-python-3289c0073e2a)


## How to convert a model in FP16 to optimize the performance 
[link](https://medium.com/@validate/object-detection-with-pytorch-models-ce297239884e)


## Comprehensive segmentation models in pytorch
[link](https://github.com/qubvel/segmentation_models.pytorch)
[link](https://smp.readthedocs.io/en/latest/)

## Summary of MLOps
[link](https://techleadcuriosity.com/mlops-best-practices-for-machine-learning-model-development-deployment-and-maintenance-e70f5d2f416b)

## MLOps Tools (From data processing to model monitoring):
[link](https://towardsdatascience.com/mlops-tips-and-tricks-75-code-snippets-b8f04036d0a0)

## Kornia
Easy way to do computer vision tasks. It consists of a set of routines and differentiable modules to solve generic computer vision problems.
[link](https://kornia.readthedocs.io/en/latest/get-started/introduction.html)

## Detecting photoshop edits
[link](https://github.com/PeterWang512/FALdetector)

## PyCaret
Automate ML workflow
[link](https://github.com/pycaret/pycaret)

## Summary of practical computer vision tasks
[link](https://neptune.ai/blog/15-computer-visions-projects)

## CuPy: Numpy ans scipy on GPU. almost 100x speeds up rather than CPU
[link](https://cupy.dev/)

## different sklearn encoders
[link](https://www.kdnuggets.com/2021/05/deal-with-categorical-data-machine-learning.html)

## Which visualization method to apply?
[link](https://dataio.ir/%D8%A8%D9%87-%D8%AA%D8%B5%D9%88%DB%8C%D8%B1-%DA%A9%D8%B4%DB%8C%D8%AF%D9%86-%D8%AF%D8%A7%D8%AF%D9%87-%D9%87%D8%A7-voubuiqwuqhb), [link](https://www.data-to-viz.com/)

## Skip-gram implementation with pytorch
[link](https://www.cse.chalmers.se/~richajo/nlp2019/l3/Skip-gram%20with%20negative%20sampling.html)

## Different types of AutoEncoders
[link](https://medium.com/chat-gpt-now-writes-all-my-articles/introduction-to-all-types-of-autoencoders-with-python-ec0e47b5e1b9)

## Papers for prompt engineering
[link](https://www.promptingguide.ai/papers)

## How to choose best algorithm for issue?
[link](https://medium.com/mlearning-ai/how-to-choose-the-best-algorithm-for-your-machine-learning-project-abd271ce6b11), [link](https://pub.towardsai.net/which-ml-algorithm-to-choose-f9caf674219e)

## Easy explanation of maximum likelihood estimation
Our goal is to find a model (represented by θ) that make the observed data most probable, or in other words a model that maximizes the likelihood of obtaining the data points X if we were sampling them from the distribution P. This process is often referred to as maximum likelihood estimation (MLE).

Formally, the likelihood of the model (represented by θ) is defined as the probability of obtaining the observed data X given the model:
[link](https://medium.com/@roiyeho/maximum-likelihood-855b6df92c43)

## Tutorial and videos about LLMOps, introduced by Andrej Karpathy
[link](https://fullstackdeeplearning.com/llm-bootcamp/spring-2023/)

## How diffusion models work
[link](https://betterprogramming.pub/diffusion-models-ddpms-ddims-and-classifier-free-guidance-e07b297b2869), [link](https://medium.com/mlearning-ai/understanding-the-diffusion-model-and-the-theory-tensorflow-cafcd5752b98), [link](https://medium.com/@jdseo/implementing-diffusion-models-with-pytorch-cdc1c99b90ab)

## How generate synthesize data using gpt2 and dataframe(Generation of Realistic Tabular data)
[link](https://github.com/kathrinse/be_great)

## How positional encoding works(by kazeminejad)
Kazeminejad also proposed alternated model for pe [paper](https://arxiv.org/abs/2305.19466)
[link](https://lih-verma.medium.com/positional-embeddings-in-transformer-eab35e5cb40d)

## How to make 3D models from 2D images
[link](https://betterprogramming.pub/opensource-photogrammetry-pipeline-41854dca4e8e), [link](https://github.com/OpenDroneMap/ODM)

## How to train a local and private chatbot?
[blog](https://betterprogramming.pub/private-llms-on-local-and-in-the-cloud-with-langchain-gpt4all-and-cerebrium-6dade79f45f6), [gpt4all github](https://github.com/nomic-ai/gpt4all),[gpt4all](https://gpt4all.io/index.html),[privateGPT](https://github.com/imartinez/privateGPT),[on cloud](https://www.cerebrium.ai/),

## Vector databases
[chromadb](https://www.trychroma.com/), [pinecone](https://app.pinecone.io/organizations/), [langchain vector-db](), [compare blog](https://medium.com/sopmac-ai/vector-databases-as-memory-for-your-ai-agents-986288530443)

## How to retrain a model with efficient number of parameters?
[LoRa, QLora](https://towardsdatascience.com/qlora-fine-tune-a-large-language-model-on-your-gpu-27bed5a03e2b),[LoRa](https://github.com/microsoft/LoRA), [PEFT](https://github.com/huggingface/peft)

## How to build transformer block from scratch
[harvard](http://nlp.seas.harvard.edu/annotated-transformer/), [blog](https://medium.com/analytics-vidhya/bert-implementation-multi-head-attention-4a10142636fe), [Decoder](https://medium.com/@hunter-j-phillips/the-decoder-8882c33de69a),

## How to train a BERT model from scratch?
- In the last layer, we transform the MASKED token embeddings to a vocab_size space (Linear(embedding_size, vocab_size)).
- Also, we have NSP which is to predict the next sentence based on two joint sentences [cls]+t1+[sep]+t2+[sep]+[pad]. Then we just use the [cls] token embedding to classify it (0,1 --> similar or not).
- In the end, we use total loss which is loss_maksed + loss_nsp
[link](https://medium.com/data-and-beyond/complete-guide-to-building-bert-model-from-sratch-3e6562228891)

## Questions should ask before choosing ml method
- Does the algorithm have any assumptions about the data set? For example, some algorithms assume that the data is linearly separable (e.g., perceptron or linear SVM), while others assume that the data is normally distributed (e.g., Gaussian Mixture Models).
- How much data is needed to train the model effectively? Some algorithms, like deep neural networks, are more data-savvy than others.
- What are the runtime and memory requirements of the algorithm, both during training and prediction time?
- Which data preprocessing steps are required to prepare the data for the algorithm?
- How many hyperparameters does the algorithm have? Algorithms that have a lot of hyperparameters take more time to train and tune.
- Can the results of the algorithm be easily interpreted? In many problem domains (such as medical diagnosis), we would like to be able to explain the model’s predictions in human terms. Some models can be easily visualized (such as decision trees), while others behave more like a black box (e.g., neural networks).

## Why to reduce the variance
[link](https://towardsdatascience.com/variance-reduction-in-experiments-part-2-covariate-adjustment-methods-f5393f92eb8f)

## Ensemle learning : bagging and boosting
[link](https://towardsdatascience.com/ensemble-learning-bagging-and-boosting-23f9336d3cb0)

## Hyperparam Tuning using Bayesian
[link](https://towardsdatascience.com/conceptual-overview-of-bayesian-optimization-for-parameter-tuning-in-machine-learning-a3b1b4b9339f)


