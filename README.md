# Many Model Inference in Snowflake

## Overview

In this quickstart, you will use the [Snowflake Model Registry](https://docs.snowflake.com/en/developer-guide/snowpark-ml/model-registry/overview) to implement [partitioned](https://docs.snowflake.com/en/developer-guide/snowpark-ml/model-registry/partitioned-custom-models) inference using custom models. When using the model, the registry partitions the dataset, fits and predicts the partitions in parallel using all the nodes and cores in your warehouse, and combines the results into a single dataset afterward. This differs from the [Getting Started with Partitioned Models in Snowflake Model Registry](https://quickstarts.snowflake.com/guide/partitioned-ml-model/index.html?index=..%2F..index#0) quickstart by implementing a "stateful" model that runs training independently of inference. This allows you to pretrain a list of models, then log them as a single model in Snowflake which loads fitted models during inference.

## Step-By-Step Guide

For prerequisites, environment setup, step-by-step guide and instructions, please refer to the [QuickStart Guide](https://quickstarts.snowflake.com/guide/many-model-inference-in-snowflake/index.html).