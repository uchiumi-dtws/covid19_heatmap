#!/bin/sh

cat 0_create__h3_city.sql | bq query
cat 1_create__stay_move_20200201.sql | bq query
cat 1_create__stay_move_20200401.sql | bq query
cat 2_create__heatmap_20200201.sql | bq query
cat 2_create__heatmap_20200401.sql | bq query
cat create__ratio.sql | bq query

