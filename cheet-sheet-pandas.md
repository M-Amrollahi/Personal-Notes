df = pd.DataFrame([[1, 2,  "A"], 
                   [5, 8,  "B"], 
                   [3, 10, "B"]], 
                  columns = ["col1", "col2", "col3"])
                  
                  
# Grouping a DataFrame

df.groupby("col3").agg({"col1":sum, "col2":max})


# Filter with isin()

filter_list = ["A", "C"]
print(df[df["col3"].isin(filter_list)])


# find unique values

df["col3"].unique()


# apply function to df
def add_cols(row):
    return row.col1 + row.col2
                  
df["col3"] = df.apply(add_cols, axis=1)
print(df)



# cross tabulation - freq of elements

df = pd.DataFrame([["A", "X"], 
                   ["B", "Y"], 
                   ["C", "X"],
                   ["A", "X"]], 
                  columns = ["col1", "col2"])

print(pd.crosstab(df.col1, df.col2))
col2  X  Y
col1      
A     2  0
B     0  1
C     1  0


# query
df.query('value_1 < value_2')


# where
df['new_col'].where(df['new_col'] > 0 , 0)

# percentage change
df.value_1.pct_change()

# rank
df['rank_1'] = df['value_1'].rank()

# memory usage
df_large.memory_usage()

# select by types
df.select_dtypes(include='int64')

# explode
separate each element of the list in each column to each row
df1.explode('measurement').reset_index(drop=True)

# factorize
This method is useful for obtaining a numeric representation of an array when all that matters is identifying distinct values. 
>>> codes, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'])
array([0, 0, 1, 2, 0]...)


# truncate
remove data before and after some values


# nlargest of column
df.nlargest(3, columns=["A"])

# filter
filter subset of rows

## in Series, .count() counts the data in series but does not include the NaN.

## in Series, .size counts all the elements.

## in Series, when we add two series, two elements with the same index will be added. otherwise, NaN.
```python
a+b
0    NaN
1    NaN
2    NaN
33   NaN
33   NaN
44   NaN
```

## .is_unique , .is_monotonic_increasing can be useful.

## resample: if we have datetime index, resample() can perform like aggregation function on it.

```python
series.resample('3T').sum()

2000-01-01 00:00:00     3
2000-01-01 00:03:00    12
2000-01-01 00:06:00    21
Freq: 3T, dtype: int64
```

## crosstab(): count the intersection between each feature with one in row and another in column.




