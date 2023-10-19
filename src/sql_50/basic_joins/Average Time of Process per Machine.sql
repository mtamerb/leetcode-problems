SELECT machine_id,
       Round(Sum(CASE
                     WHEN activity_type = 'start' THEN - timestamp
                 ELSE timestamp
                 END) / Count(DISTINCT process_id), 3) AS processing_time
FROM   activity
GROUP  BY machine_id;