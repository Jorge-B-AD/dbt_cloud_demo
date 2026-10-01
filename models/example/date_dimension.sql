WITH CTE AS (
SELECT
to_timestamp(started_at) as started_at,
date(to_timestamp(started_at)) as date_started_at,
hour(to_timestamp(started_at)) as hour_started_at,
DAYNAME(to_timestamp(started_at)),

{{day_type('Started_at')}} as day_type,

{{get_season('Started_at')}} as station_of_year,

from {{ ref('stg_bike') }}
where started_at != 'started_at'
)

SELECT * 
from CTE


