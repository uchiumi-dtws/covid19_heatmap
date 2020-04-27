#!/bin/sh

cat 0_create__h3_city.sql | bq query
cat 1_create__stay_move_20200301.sql | bq query
cat 1_create__stay_move_20200308.sql | bq query
cat 1_create__stay_move_20200315.sql | bq query
cat 1_create__stay_move_20200322.sql | bq query
cat 1_create__stay_move_20200329.sql | bq query
cat 1_create__stay_move_20200405.sql | bq query
cat 1_create__stay_move_20200412.sql | bq query
cat 1_create__stay_move_20200419.sql | bq query
cat 2_create__heatmap_20200301.sql | bq query
cat 2_create__heatmap_20200308.sql | bq query
cat 2_create__heatmap_20200315.sql | bq query
cat 2_create__heatmap_20200322.sql | bq query
cat 2_create__heatmap_20200329.sql | bq query
cat 2_create__heatmap_20200405.sql | bq query
cat 2_create__heatmap_20200412.sql | bq query
cat 2_create__heatmap_20200419.sql | bq query
