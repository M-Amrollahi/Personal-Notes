## Experiences from Harvard professor on ML Research
[link](https://docs.google.com/document/d/1uvAbEhbgS_M-uDMTzmOWRlYxqCkogKRXdbKYYT98ooc/edit#heading=h.w86ci8t15ru3)

## Great illustration of pandas and its functions
How we can use pandas in optimal way(memory, cpu)?\
[link](https://betterprogramming.pub/pandas-illustrated-the-definitive-visual-guide-to-pandas-c31fa921a43)

## Is the elbow the only wat to optimise clusters? 
There are some other ways.\
[link](https://towardsdatascience.com/are-you-still-using-the-elbow-method-5d271b3063bd)

## How to get prepared for interview for data science. Topics.
[link](https://medium.com/nerd-for-tech/60-days-plan-to-revise-data-science-concepts-0-to-100-interview-preparation-a30fc0696b48)

## Contrasive learning. Negative samples and positive samples and anchor. 
SimCLR.\
[link](https://medium.com/aiguys/contrastive-learning-explained-17fa79f707bf)

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

## Runge phenomenon:
Sampling.\
equidistance.\
it occurs whenever you try to interpolate a function by polynomials when you are using an equidistant grid.\
You can avoid the Runge phenomenon by using a suitably non-equidistant grid. One of those grids, which are working very well, is the Chebyshev grid, which we will introduce in the next section.
[link](https://medium.com/@mathcube7/chebyshev-interpolation-with-python-2f2e89bb7c30)

## Summary of Transformer models:
[link](https://amatriain.net/blog/transformer-models-an-introduction-and-catalog-2d1e9039f376/)

## Using Bayesian Search can improve the spending of model
[](https://medium.com/@ali.soleymani.co/stop-using-grid-search-or-random-search-for-hyperparameter-tuning-c2468a2ff887)

## How Diffusion model works?
With Math.\
[](https://medium.com/@steinsfu/diffusion-model-clearly-explained-cd331bd41166)

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

