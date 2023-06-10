## Debugging Python code
I want you to be a Python programmer, here is a piece of Python code
containing {problem} — {insert code snippet} — I am getting the following error
{insert error}. What is the reason for the bug?

## Python code explanation
I want you to act as a code explainer in Python. I don't understand
this function. Can you please explain what it does, and provide an
example? {Insert function}

## Python code optimization
I want you to act as a code optimizer in Python. {Describe
problem with current code, if possible}. Can you make the
code {more Pythonic/cleaner/more efficient/run faster/more
readable}? {Insert Code}

## Python code simplification
I want you to act as a programmer in Python. Please simplify this
code while ensuring that it is {efficient/easy to read/Pythonic}?
{Insert Code}

## From R to Python code translation
I want you to act as a programmer in R.  Please translate this
code to Python. {Insert code}

## Write unit tests in Python
I want you to act as a Python Programmer. Can you please
write unit tests for the function {functionname}? {Insert
requirements for unit tests, if any} {Insert code}

## Data generation & creating tables
I want you to act as a data generator. Can you write
SQL queries in {database version} that create a table
{table name} with the columns {column name}. Include
relevant constraints and index.

## Write SQL queries from natural language
I want you to act as a data scientist. {Insert
description of tables}. Can you {count/sum/take
average} of {value} which are {insert filters}

## Data generation workflow
I want you to act as a data generator in Python. Can you
generate a Markdown file that contains {data requirement}.
Save the file to {filename}

## Creating plots with matplotlib
I want you to act as a data scientist
coding in Python.  Given a dataframe
{dataframe name} containing the
columns {column names} Use
matplotlib  to plot a {chart type and
requirement}.

## Model training workflow
I want you to act as a data scientist
programming in Python. Given a
dataset of {dataframe name} that
contains the {column name}, write code
to predict {output variable}.

## Hyperparameter tuning workflow
I want you to act as a data scientist programming in Python.
Given a {type of model} model, write code to tune the
hyperparameter.

## Model explainability workflow
I want you to act as a data scientist programming in
Python. Given a {type of model} that predicts the
{predictor variable}, write code that explains an output
using Shap values.

## Classify text sentiment
I want you to act as a sentiment classifier. Classify the
following text which came from {describe text origin} as
“positive”, “negative”, “neutral” or “unsure”: {Insert text
to be classifier}

## Create re
I want you to act as a programmer coding in Python,
use regular expressions to test if a string {insert
requirements}

## Text dataset generation
I want you to act as a dataset generator. Please
generate {number of text} texts on {required text and
the context}. {Insert additional requirements}

## Summarize article
I want you to act as a data scientist in
a research start-up. Please explain the
paper {paper} to a {level of difficulty,
e.g. software developer, five-year-old,
business executive, professor}.

## Write tutorials
I want you to act as a data scientist writer. Please write
the {number-of-words}-word introduction to a tutorial on
{title}. {Insert relevant key points}.


----------------
# Fron [Deeplearning.ai with Andrew Ng](https://learn.deeplearning.ai/chatgpt-prompt-eng/)
## Identify the part of the text you want to aim it by delimiter like ```{text}``` or <> or --- or ####
e.g.: summarize the text delimited by triple backticks ```{text}```

## Ask it for specific output type like json, html,...
e.g. Use the following format ...

## Ask to check any condition in the input or output. 
e.g. If there is not sign of abusive content then ...

## Few-shot prompting.
Tell him about somthing with an example and then ask him to write in the same manner but with different topic.

## Need to use some tecniques to reduce the hallucination

## Iterativly Prompt Develelopment
Refine the prompt with several examples

## You can ask it to extract relevant information

## Find the sentiment pos/neg
prompt = f"""
What is the sentiment of the following product review, 
which is delimited with triple backticks?

Give your answer as a single word, either "positive" \
or "negative".

Review text: '''{lamp_review}'''
"""

## check the grammar and proofreading
prompt = f"proofread and correct this review:

## First, give him a role then ask him about his task
Your role is a customer... . your task is to ...

