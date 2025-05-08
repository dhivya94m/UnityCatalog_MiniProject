-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create External location
-- MAGIC - 1.bronze
-- MAGIC - 2.silver
-- MAGIC - 3.gold
-- MAGIC

-- COMMAND ----------

CREATE EXTERNAL LOCATION dbcourse_extloc_bronze
URL   'abfss://bronze@dbcourseucatalogdatalake.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL dbcourse_uc_storagecredential)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC display(dbutils.fs.ls("abfss://bronze@dbcourseucatalogdatalake.dfs.core.windows.net/"))

-- COMMAND ----------

desc external location dbcourse_extloc_bronze

-- COMMAND ----------

CREATE EXTERNAL LOCATION dbcourse_extloc_silver
URL   'abfss://silver@dbcourseucatalogdatalake.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL dbcourse_uc_storagecredential)

-- COMMAND ----------

CREATE EXTERNAL LOCATION dbcourse_extloc_gold
URL   'abfss://gold@dbcourseucatalogdatalake.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL dbcourse_uc_storagecredential)

-- COMMAND ----------

show external locations