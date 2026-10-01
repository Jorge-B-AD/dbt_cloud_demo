with bike as (

select
distinct
start_statio_id as station_id,
start_station_name as station_name,
start_station_name as station_lat,
start_lng as start_station_lng

    from {{ source('demo', 'bike') }}

    where ride_id != 'ride_id'
    -- limit 10
)

select*
from bike