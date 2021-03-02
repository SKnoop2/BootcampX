-- Calculate the average time it takes to start an assistance request.

-- Return just a single column here.
-- Expected Result:

--  average_wait_time 
-- -------------------
--  00:08:46.258793
-- (1 row)

SELECT AVG(started_at - created_at)
FROM assistance_requests