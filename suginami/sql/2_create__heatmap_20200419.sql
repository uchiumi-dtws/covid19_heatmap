#standardSQL

create or replace table `astute-cumulus-230103.covid19_hm_suginami.heatmap_20200419` as

with temp1 as (
select
    *
from
    `astute-cumulus-230103.covid19_hm_suginami.stay_move_20200419` l 
inner join
    `astute-cumulus-230103.covid19_hm_suginami.h3_city` r 
on
    l.h3_10_id = r.h3_id
)

select
    h3_10_id,
    count(distinct uuid) as cnt_uuid
from
    temp1
group by
    h3_10_id
