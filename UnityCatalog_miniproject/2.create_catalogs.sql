-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create catalog and schema 
-- MAGIC - 1.bronze
-- MAGIC - 2.silver
-- MAGIC - 3.gold
-- MAGIC

-- COMMAND ----------

CREATE catalog if not exists formula_dev

-- COMMAND ----------



-- COMMAND ----------

show catalogs

-- COMMAND ----------

use catalog formula01_dev


-- COMMAND ----------

select current_catalog()

-- COMMAND ----------

create schema if not exists bronze
managed location 'abfss://bronze@dbcourseucatalogdatalake.dfs.core.windows.net/'

-- COMMAND ----------

create schema if not exists silver
managed location 'abfss://silver@dbcourseucatalogdatalake.dfs.core.windows.net/'

-- COMMAND ----------

create schema if not exists gold
managed location 'abfss://gold@dbcourseucatalogdatalake.dfs.core.windows.net/'

-- COMMAND ----------

show schemas