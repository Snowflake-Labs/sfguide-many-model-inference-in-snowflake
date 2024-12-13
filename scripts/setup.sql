USE ROLE ACCOUNTADMIN;

-- Using ACCOUNTADMIN, create a new role for this exercise and grant to applicable users
CREATE OR REPLACE ROLE MANY_MODELS_USER;
GRANT ROLE MANY_MODELS_USER to USER <YOUR_USER>;

-- create our virtual warehouse. We'll use snowpark optimized to ensure we have enough memory
CREATE OR REPLACE WAREHOUSE MANY_MODELS_WH WITH
  WAREHOUSE_SIZE = 'MEDIUM'
  WAREHOUSE_TYPE = 'SNOWPARK-OPTIMIZED';

GRANT ALL ON WAREHOUSE MANY_MODELS_WH TO ROLE MANY_MODELS_USER;

-- Next create a new database and schema,
CREATE OR REPLACE DATABASE MANY_MODELS_DATABASE;
CREATE OR REPLACE SCHEMA MANY_MODELS_SCHEMA;

GRANT OWNERSHIP ON DATABASE MANY_MODELS_DATABASE TO ROLE MANY_MODELS_USER COPY CURRENT GRANTS;
GRANT OWNERSHIP ON ALL SCHEMAS IN DATABASE MANY_MODELS_DATABASE  TO ROLE MANY_MODELS_USER COPY CURRENT GRANTS;
