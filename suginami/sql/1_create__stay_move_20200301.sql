#standardSQL

create or replace table `astute-cumulus-230103.covid19_hm_suginami.stay_move_20200301` as 
select
    *,
    jslibs.h3.geoToH3(latitude, longitude, 10) as h3_10_id
 from
    `dtws-datamart-prd.base.stay_move_20200301`
