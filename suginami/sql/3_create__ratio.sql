#standardSQL

create or replace table `astute-cumulus-230103.covid19_hm_suginami.ratio` as

select
    l.h3_10_id,
    r.cnt_uuid / l.cnt_uuid as ratio,
    jslibs.h3.ST_H3_BOUNDARY(l.h3_10_id) as hex
    -- jslibs.h3.ST_H3_BOUNDARY: return geo type object from h3_10_id hex point
from
    `astute-cumulus-230103.covid19_hm_suginami.heatmap_20200201` l 
inner join
    `astute-cumulus-230103.covid19_hm_suginami.heatmap_20200401` r 
using(h3_10_id)
