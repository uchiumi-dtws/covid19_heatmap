#standardSQL

create or replace table `astute-cumulus-230103.covid19_hm_suginami.h3_city` as
select
    *
from
    `dtws-datamart-prd.h3.h3_city_10` 
where
    city_name = "東京都:杉並区"
